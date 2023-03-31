package com.tang.mall.model.pojo;

import io.swagger.annotations.ApiModelProperty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

public class UmsAdmin {
    @ApiModelProperty(hidden = true)
    private Long id;

    @NotNull(message = "用户名不能为空")
    @ApiModelProperty(value = "用户名", name = "username", dataType = "String", required = true)
    private String username;

    @NotNull(message = "密码不能为空")
    @Size(min = 6, max = 20, message = "密码长度必须在 {min} 至 {max} 之间")
    @ApiModelProperty(value = "密码", name = "password", dataType = "String", required = true)
    private String password;

    @ApiModelProperty(value = "头像", name = "icon", dataType = "String", required = true)
    private String icon;

    @ApiModelProperty(value = "邮箱", name = "email", dataType = "String", required = true)
    private String email;

    @ApiModelProperty(value = "昵称", name = "nickName", dataType = "String", required = true)
    private String nickName;

    @ApiModelProperty(value = "备注信息", name = "note", dataType = "String", required = true)
    private String note;

    @ApiModelProperty(hidden = true)
    private Date createTime;

    @ApiModelProperty(hidden = true)
    private Date loginTime;

    @ApiModelProperty(hidden = true)
    private Integer status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}