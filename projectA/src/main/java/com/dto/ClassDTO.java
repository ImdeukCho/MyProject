package com.dto;

public class ClassDTO {

	private String userId;
	private String userPasswd;
	private String userName;
	private String gender;
	private String birth;
	private String phone;
	private String address;
	private String email;
	private String profilePhoto;
	private String certificatePhoto;
	private String certificateData;
	private String hobby;
	private String cardName;
	private String cardNo;
	public ClassDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ClassDTO(String userId, String userPasswd, String userName, String gender, String birth, String phone,
			String address, String email, String profilePhoto, String certificatePhoto, String certificateData,
			String hobby, String cardName, String cardNo) {
		super();
		this.userId = userId;
		this.userPasswd = userPasswd;
		this.userName = userName;
		this.gender = gender;
		this.birth = birth;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.profilePhoto = profilePhoto;
		this.certificatePhoto = certificatePhoto;
		this.certificateData = certificateData;
		this.hobby = hobby;
		this.cardName = cardName;
		this.cardNo = cardNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPasswd() {
		return userPasswd;
	}
	public void setUserPasswd(String userPasswd) {
		this.userPasswd = userPasswd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProfilePhoto() {
		return profilePhoto;
	}
	public void setProfilePhoto(String profilePhoto) {
		this.profilePhoto = profilePhoto;
	}
	public String getCertificatePhoto() {
		return certificatePhoto;
	}
	public void setCertificatePhoto(String certificatePhoto) {
		this.certificatePhoto = certificatePhoto;
	}
	public String getCertificateData() {
		return certificateData;
	}
	public void setCertificateData(String certificateData) {
		this.certificateData = certificateData;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	@Override
	public String toString() {
		return "ClassDTO [userId=" + userId + ", userPasswd=" + userPasswd + ", userName=" + userName + ", gender="
				+ gender + ", birth=" + birth + ", phone=" + phone + ", address=" + address + ", email=" + email
				+ ", profilePhoto=" + profilePhoto + ", certificatePhoto=" + certificatePhoto + ", certificateData="
				+ certificateData + ", hobby=" + hobby + ", cardName=" + cardName + ", cardNo=" + cardNo + "]";
	}

	
	
	
	
}
