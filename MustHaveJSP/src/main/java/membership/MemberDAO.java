package membership;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class MemberDAO extends JDBConnect {
	
	public static void main(String[] args) {
		MemberDAO md = new MemberDAO("com.mysql.cj.jdbc.Driver",
				"jdbc:mysql://localhost:3306/musthave", "scott", "tiger");
		
		MemberDTO member = md.getMemberDTO("musthave", "1234");
		if (member != null)
			System.out.println(member);
		else
			System.out.println("데이터가 없습니다.");		
	}
	
	// 명시한 데이터베이스로의 연결이 완료된 MemberDAO 객체를 생성합니다.
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	public MemberDAO(ServletContext application) {
		super(application);
	}
	
	// 명시한 아이디/패스워드와 일치하는 회원 정보를 반환합니다.
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = null;	// 회원 정보 DTO 객체 생성
		String query = "SELECT * FROM member WHERE id=? AND pass=?";	// 쿼리문 템플릿
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			// 쿼리 실행
			psmt = getCon().prepareStatement(query);	//동적 쿼리문 준비
			psmt.setString(1, uid);		// 쿼리문의 첫 번째 인파라미터에 값 설정
			psmt.setString(2, upass);	// 쿼리문의 두 번째 인파라미터에 값 설정
			rs = psmt.executeQuery();	// 쿼리문 실행
			
			// 결과 처리
			if (rs.next()) {
				dto = new MemberDTO();
				// 쿼리 결과로 얻은 회원 정보를 DTO 객체에 저장
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) psmt.close();
				if (rs != null) rs.close();
			} catch (Exception e) {}
		}
		
		return dto;	// DTO 객체 반환
	}

}
