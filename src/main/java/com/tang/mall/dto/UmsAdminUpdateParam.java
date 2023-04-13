package com.tang.mall.dto;

import io.swagger.annotations.ApiModelProperty;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

public class UmsAdminUpdateParam implements Serializable {
    @NotNull(message = "id不能为空")
    @ApiModelProperty(value = "id", required = true)
    private Long id;

    @ApiModelProperty(value = "用户名", name = "username", dataType = "String")
    private String username;

    @ApiModelProperty(value = "头像", name = "icon", dataType = "String")
    private String icon;

    @ApiModelProperty(value = "邮箱", name = "email", dataType = "String")
    private String email;

    @ApiModelProperty(value = "昵称", name = "nickName", dataType = "String")
    private String nickName;

    @ApiModelProperty(value = "备注信息", name = "note", dataType = "String")
    private String note;

    @ApiModelProperty(value = "帐号启用状态：0->禁用；1->启用", name = "status", dataType = "String")
    private String status;

    private static final long serialVersionUID = 1L;

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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "UmsAdminUpdateParam{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", icon='" + icon + '\'' +
                ", email='" + email + '\'' +
                ", nickName='" + nickName + '\'' +
                ", note='" + note + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}