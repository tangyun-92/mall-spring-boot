package com.tang.mall.service;

import com.tang.mall.dto.UmsAdminAddParam;
import com.tang.mall.dto.UmsAdminListParam;
import com.tang.mall.dto.UmsAdminRegisterParam;
import com.tang.mall.dto.UmsAdminUpdateParam;
import com.tang.mall.mbg.model.UmsAdmin;
import com.tang.mall.mbg.model.UmsPermission;
import com.tang.mall.util.PageBean;

import java.util.List;

public interface UmsAdminService {

    UmsAdmin getAdminByUsername(String username);

    List<UmsPermission> getPermissionList(Long adminId);

    void register(UmsAdminRegisterParam umsAdminRegisterParam);

    String login(String username, String password);

    PageBean list(UmsAdminListParam umsAdminListParam);

    void add(UmsAdminAddParam umsAdminAddParam);

    void update(UmsAdminUpdateParam umsAdminUpdateParam);

    void delete(Integer[] ids);
}
