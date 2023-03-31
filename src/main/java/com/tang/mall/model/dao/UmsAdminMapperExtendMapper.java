package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsAdmin;
import org.springframework.stereotype.Repository;

@Repository
public interface UmsAdminMapperExtendMapper {

    UmsAdmin selectByName(String username);

}