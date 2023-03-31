package com.tang.mall.model.dto;

import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.NotNull;

/**
 * 用户登录参数
 */
public class UmsAdminLoginParam {
    @ApiModelProperty(value = "用户名", name = "username", dataType = "String", required = true)
    @NotNull(message = "用户名不能为空")
    private String username;
    @ApiModelProperty(value = "密码", name = "password", dataType = "String", required = true)
    @NotNull(message = "密码不能为空")
    private String password;

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
}
