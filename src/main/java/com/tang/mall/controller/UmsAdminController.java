package com.tang.mall.controller;

import com.tang.mall.common.ApiRestResponse;
import com.tang.mall.dto.UmsAdminRegisterParam;
import com.tang.mall.exception.MallExceptionEnum;
import com.tang.mall.mbg.model.UmsAdmin;
import com.tang.mall.mbg.model.UmsPermission;
import com.tang.mall.dto.UmsAdminLoginParam;
import com.tang.mall.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Api(tags = "后台-用户管理")
@RequestMapping("/admin")
public class UmsAdminController {
    @Autowired
    UmsAdminService adminService;
    @Value("${jwt.tokenHeader}")
    private String tokenHeader;
    @Value("${jwt.tokenHead}")
    private String tokenHead;

    @ApiOperation(value = "用户注册")
    @PostMapping(value = "/register")
    public ApiRestResponse register(@Valid @RequestBody UmsAdminRegisterParam umsAdminRegisterParam) {
        adminService.register(umsAdminRegisterParam);
        return ApiRestResponse.success();
    }

    @ApiOperation(value = "登录以后返回token")
    @PostMapping(value = "/login")
    public ApiRestResponse login(@Valid @RequestBody UmsAdminLoginParam umsAdminLoginParam) {
        String token = adminService.login(umsAdminLoginParam.getUsername(), umsAdminLoginParam.getPassword());
        if (token == null) {
            return ApiRestResponse.error(MallExceptionEnum.WRONG_PASSWORD);
        }
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);
        tokenMap.put("tokenHead", tokenHead);
        return ApiRestResponse.success(tokenMap);
    }

    @ApiOperation("获取用户所有权限（包括+-权限）")
    @GetMapping(value = "/permission")
    public ApiRestResponse getPermissionList(@RequestParam Long adminId) {
        List<UmsPermission> permissionList = adminService.getPermissionList(adminId);
        return ApiRestResponse.success(permissionList);
    }
}
