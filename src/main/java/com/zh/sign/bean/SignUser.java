package com.zh.sign.bean;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 用户 entity
 * @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "sign_user", catalog = "sign")
public class SignUser implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 1L;
	private Integer userId;
	private String userName;
	private String userPassword;
	private Set<SignAppl> signAppls = new HashSet<SignAppl>();

	// Constructors

	/** default constructor */
	public SignUser() {
	}

	/** minimal constructor */
	public SignUser(String userName, String userPassword) {
		this.userName = userName;
		this.userPassword = userPassword;
	}

	/** full constructor */
	public SignUser(String userName, String userPassword,
			Set<SignAppl> signAppls) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.signAppls = signAppls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_id", unique = true, nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "user_name", nullable = false, length = 24)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "user_password", nullable = false, length = 48)
	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "signUser")
	public Set<SignAppl> getSignAppls() {
		return this.signAppls;
	}

	public void setSignAppls(Set<SignAppl> signAppls) {
		this.signAppls = signAppls;
	}

	@Override
	public String toString() {
		return String
				.format("SignUser [userId=%s, userName=%s, userPassword=%s, signAppls=%s]",
						userId, userName, userPassword, signAppls);
	}

}