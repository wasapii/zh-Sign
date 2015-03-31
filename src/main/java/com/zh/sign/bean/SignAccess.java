package com.zh.sign.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 权限entity. 
 * @author zhanghao
 * 2015-03-31
 */
@Entity
@Table(name = "sign_access", catalog = "sign")
public class SignAccess implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer accessId;
	private SignRole signRole;
	private String accessName;
	private String accessValue;

	// Constructors

	/** default constructor */
	public SignAccess() {
	}

	/** full constructor */
	public SignAccess(SignRole signRole, String accessName, String accessValue) {
		this.signRole = signRole;
		this.accessName = accessName;
		this.accessValue = accessValue;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "access_id", unique = true, nullable = false)
	public Integer getAccessId() {
		return this.accessId;
	}

	public void setAccessId(Integer accessId) {
		this.accessId = accessId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "role_id", nullable = false)
	public SignRole getSignRole() {
		return this.signRole;
	}

	public void setSignRole(SignRole signRole) {
		this.signRole = signRole;
	}

	@Column(name = "access_name", nullable = false, length = 24)
	public String getAccessName() {
		return this.accessName;
	}

	public void setAccessName(String accessName) {
		this.accessName = accessName;
	}

	@Column(name = "access_value", nullable = false)
	public String getAccessValue() {
		return this.accessValue;
	}

	public void setAccessValue(String accessValue) {
		this.accessValue = accessValue;
	}

	@Override
	public String toString() {
		return String
				.format("SignAccess [accessId=%s, signRole=%s, accessName=%s, accessValue=%s]",
						accessId, signRole, accessName, accessValue);
	}

}