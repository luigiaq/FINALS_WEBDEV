package com.it1311l.uap.oneflightfinals.models;

public class User {
	private Integer id;
	private String email;
	private String password;
	private String birthday;
	private String name;
	private String phoneNumber;
	private String passportDetails;
	private String userType;
	
	public User(Integer id, String email, String password, String birthday, String name, String phoneNumber, String passportDetails, String userType) {
		this.id = id;
        this.email = email;
        this.password = password;
        this.birthday = birthday;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.passportDetails = passportDetails;
        this.userType = userType;
	}
	
	public Integer getid() {
        return id;
    }

    public void setid(Integer id) {
        this.id = id;
    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getpassword() {
        return password;
    }

    public void setpassword(String password) {
        this.password = password;
    }

    public String getbirthday() {
        return birthday;
    }

    public void setbirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getname() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getphoneNumber() {
        return phoneNumber;
    }

    public void setphoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public String getpassportDetails() {
        return passportDetails;
    }

    public void setpassportDetails(String passportDetails) {
        this.passportDetails = passportDetails;
    }

	public String getuserType() {
		return userType;
	}

	public void setuserType(String userType) {
		this.userType = userType;
	}
    
}
