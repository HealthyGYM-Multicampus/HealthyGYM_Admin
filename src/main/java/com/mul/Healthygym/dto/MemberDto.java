package com.mul.Healthygym.dto;

import java.io.Serializable;

public class MemberDto implements Serializable {

	private int memberseq;
	private String pwd;
	private String nickname;
	private String email;
	private String authority;
	private int auth;
	
	private int mailauth;
    private String mailkey;
	private String profile;
	private String provider;

	public MemberDto() {
	}

	public MemberDto(int memberseq, String pwd, String nickname, String email, String authority, int auth, 
			int mailauth, String mailkey, String profile, String provider) {
		super();
		this.memberseq = memberseq;
		this.pwd = pwd;
		this.nickname = nickname;
		this.email = email;
		this.authority = authority;
		this.auth = auth;
		this.mailauth = mailauth;
		this.mailkey = mailkey;
		this.profile = profile;
		this.provider = provider;
	}

	public int getId() {
		return memberseq;
	}

	public void setId(int memberseq) {
		this.memberseq = memberseq;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return nickname;
	}

	public void setName(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}
	
	public int getMailauth() {
		return mailauth;
	}

	public void setMailauth(int mailauth) {
		this.mailauth = mailauth;
	}
	
	public String getMailkey() {
		return mailkey;
	}

	public void setMailkey(String mailkey) {
		this.mailkey = mailkey;
	}
	
	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	public String getProvider() {
		return provider;
	}

	public void setProvider(String provider) {
		this.provider = provider;
	}

	@Override
	public String toString() {
		return "MemberDto [memberseq=" + memberseq + ", pwd=" + pwd + ", nickname=" + nickname + ", email=" + email + ","
				+ "authority=" + authority + ", auth=" + auth + ", mailauth=" + mailauth + ", mailkey=" + mailkey + ", profile=" + profile +
				", provider=" + provider +"]";
	}
}
