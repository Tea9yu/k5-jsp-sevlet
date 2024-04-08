package edu.pnu.domain;

import java.util.Date;

public class MemberVO {	
	private int id;
	private String name;
	private String pass;
	private Date regidate;
	
	public MemberVO() {
		
	}
	public MemberVO(int id, String name, String pass, Date regidate) {
		this.id = id;
		this.name = name;
		this.pass = pass;
		this.regidate = regidate;
	}
	public static  MemberVOBuilder builder() {
		return new MemberVOBuilder();
	}
	public static class MemberVOBuilder {
		private int id;
		private String name;
		private String pass;
		private Date regidate;
		
		public MemberVOBuilder id(int id) {
			this.id = id;
			return this;
		}
		public MemberVOBuilder name(String name) {
			this.name = name;
			return this;
		}
		public MemberVOBuilder pass(String pass) {
			this.pass = pass;
			return this;
		}
		public MemberVOBuilder regidate(Date regidate) {
			this.regidate = regidate;
			return this;
		}
		public MemberVO build() {
			return new MemberVO(id, name, pass, regidate);
		}
	}
}
