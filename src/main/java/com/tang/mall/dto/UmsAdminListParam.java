package com.tang.mall.dto;

import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.Date;

public class UmsAdminListParam implements Serializable {
    @ApiModelProperty(value = "用户名", name = "username", dataType = "String")
    private String username;

    @ApiModelProperty(value = "昵称", name = "nickName", dataType = "String")
    private String nickName;

    @ApiModelProperty(value = "帐号启用状态：0->禁用；1->启用", name = "status", dataType = "String")
    private String status;

    @ApiModelProperty(value = "当前第几页", name = "pageNum", dataType = "Integer")
    private Integer current=1;

    @ApiModelProperty(value = "每页显示条数", name = "pageSize", dataType = "Integer")
    private Integer pageSize=10;

    private static final long serialVersionUID = 1L;

    @Override
    public String toString() {
        return "UmsAdminListParam{" +
                "username='" + username + '\'' +
                ", nickName='" + nickName + '\'' +
                ", status='" + status + '\'' +
                ", current=" + current +
                ", pageSize=" + pageSize +
                '}';
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getCurrent() {
        return current;
    }

    public void setCurrent(Integer current) {
        this.current = current;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}