package com.tang.mall.controller;

import com.tang.mall.common.ApiRestResponse;
import com.tang.mall.dto.*;
import com.tang.mall.exception.MallExceptionEnum;
import com.tang.mall.mbg.model.UmsAdmin;
import com.tang.mall.mbg.model.UmsPermission;
import com.tang.mall.service.UmsAdminService;
import com.tang.mall.util.JwtTokenUtil;
import com.tang.mall.util.PageBean;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Api(tags = "user-management-admin")
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

    @ApiOperation("获取登录用户的详细信息与权限列表")
    @GetMapping(value = "/userInfo")
    public ApiRestResponse getUserInfo() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        UmsAdmin umsAdmin = adminService.getAdminByUsername(username);
        umsAdmin.setPassword(null);

        HashMap<String, Object> hashMap = new HashMap<>();
        List<UmsPermission> permissionList = adminService.getPermissionList(umsAdmin.getId());
        hashMap.put("permissionList", permissionList);
        hashMap.put("info", umsAdmin);

        return ApiRestResponse.success(hashMap);
    }

    @ApiOperation("后台-用户列表")
    @GetMapping("/user/list")
    @PreAuthorize("hasAuthority('ums:admin:read')")
    public ApiRestResponse getUserList(UmsAdminListParam umsAdminListParam) {
        PageBean list = adminService.list(umsAdminListParam);
        return ApiRestResponse.success(list);
    }

    @ApiOperation("后台-新增用户")
    @PostMapping("/user/add")
    @PreAuthorize("hasAuthority('ums:admin:create')")
    public ApiRestResponse addUser(@Valid @RequestBody UmsAdminAddParam umsAdminAddParam) {
        adminService.add(umsAdminAddParam);
        return ApiRestResponse.success();
    }

    @ApiOperation("后台-更新用户")
    @PostMapping("/user/update")
    @PreAuthorize("hasAuthority('ums:admin:update')")
    public ApiRestResponse updateUser(@Valid @RequestBody UmsAdminUpdateParam umsAdminUpdateParam) {
        adminService.update(umsAdminUpdateParam);
        return ApiRestResponse.success();
    }

    @ApiOperation("后台-删除用户")
    @PostMapping("/user/delete")
    @PreAuthorize("hasAuthority('ums:admin:delete')")
    public ApiRestResponse deleteUser(@RequestParam Integer[] ids) {
        adminService.delete(ids);
        return ApiRestResponse.success();
    }

    @ApiOperation("后台-分配角色")
    @PostMapping("/user/assignRole")
    @PreAuthorize("hasAuthority('ums:admin:assignRole')")
    public ApiRestResponse assignRole(@RequestParam Long adminId, @RequestParam Long roleId) {
        adminService.assignRole(adminId, roleId);
        return ApiRestResponse.success();
    }
}
