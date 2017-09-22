package org.Hello;

public class Login {

	private String user;
	private String password;
	private String email;
	
	
	Login(String userr, String passwordd,String emaill) {
		user = userr;
		password = passwordd;
		email = emaill;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}
