package com.tang.mall.model.dao;

import com.tang.mall.mbg.model.UmsAdmin;
import org.springframework.stereotype.Repository;

@Repository
public interface UmsAdminMapperExtendMapper {

    UmsAdmin selectByName(String username);

}