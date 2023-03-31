package com.tang.mall.service;

import com.tang.mall.mbg.model.UmsAdmin;
import com.tang.mall.mbg.model.UmsPermission;

import java.util.List;

public interface UmsAdminService {

    UmsAdmin getAdminByUsername(String username);

    List<UmsPermission> getPermissionList(Long adminId);

    void register(UmsAdmin umsAdminParam);

    String login(String username, String password);
}
