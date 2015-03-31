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
 * 角色 entity
 * @author zhanghao
 * 2015-03-31
 */
@Entity
@Table(name = "sign_role", catalog = "sign")
public class SignRole implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer roleId;
	private SignAppl signAppl;
	private String roleName;
	private Set<SignAccess> signAccesses = new HashSet<SignAccess>();

	// Constructors

	/** default constructor */
	public SignRole() {
	}

	/** minimal constructor */
	public SignRole(SignAppl signAppl, String roleName) {
		this.signAppl = signAppl;
		this.roleName = roleName;
	}

	/** full constructor */
	public SignRole(SignAppl signAppl, String roleName,
			Set<SignAccess> signAccesses) {
		this.signAppl = signAppl;
		this.roleName = roleName;
		this.signAccesses = signAccesses;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "role_id", unique = true, nullable = false)
	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "appl_id", nullable = false)
	public SignAppl getSignAppl() {
		return this.signAppl;
	}

	public void setSignAppl(SignAppl signAppl) {
		this.signAppl = signAppl;
	}

	@Column(name = "role_name", nullable = false, length = 24)
	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "signRole")
	public Set<SignAccess> getSignAccesses() {
		return this.signAccesses;
	}

	public void setSignAccesses(Set<SignAccess> signAccesses) {
		this.signAccesses = signAccesses;
	}

	@Override
	public String toString() {
		return String
				.format("SignRole [roleId=%s, signAppl=%s, roleName=%s, signAccesses=%s]",
						roleId, signAppl, roleName, signAccesses);
	}

}