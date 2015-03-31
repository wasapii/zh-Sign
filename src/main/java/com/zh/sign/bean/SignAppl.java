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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 系统 entity
 * @author zhanghao
 * 2015-03-31
 */
@Entity
@Table(name = "sign_appl", catalog = "sign")
public class SignAppl implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer applId;
	private SignUser signUser;
	private String applName;
	private String applValue;
	private Set<SignRole> signRoles = new HashSet<SignRole>(0);

	// Constructors

	/** default constructor */
	public SignAppl() {
	}

	/** minimal constructor */
	public SignAppl(SignUser signUser, String applName, String applValue) {
		this.signUser = signUser;
		this.applName = applName;
		this.applValue = applValue;
	}

	/** full constructor */
	public SignAppl(SignUser signUser, String applName, String applValue,
			Set<SignRole> signRoles) {
		this.signUser = signUser;
		this.applName = applName;
		this.applValue = applValue;
		this.signRoles = signRoles;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "appl_id", unique = true, nullable = false)
	public Integer getApplId() {
		return this.applId;
	}

	public void setApplId(Integer applId) {
		this.applId = applId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", nullable = false)
	public SignUser getSignUser() {
		return this.signUser;
	}

	public void setSignUser(SignUser signUser) {
		this.signUser = signUser;
	}

	@Column(name = "appl_name", nullable = false, length = 24)
	public String getApplName() {
		return this.applName;
	}

	public void setApplName(String applName) {
		this.applName = applName;
	}

	@Column(name = "appl_value", nullable = false, length = 48)
	public String getApplValue() {
		return this.applValue;
	}

	public void setApplValue(String applValue) {
		this.applValue = applValue;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "signAppl")
	public Set<SignRole> getSignRoles() {
		return this.signRoles;
	}

	public void setSignRoles(Set<SignRole> signRoles) {
		this.signRoles = signRoles;
	}

	@Override
	public String toString() {
		return String
				.format("SignAppl [applId=%s, signUser=%s, applName=%s, applValue=%s, signRoles=%s]",
						applId, signUser, applName, applValue, signRoles);
	}
	
}