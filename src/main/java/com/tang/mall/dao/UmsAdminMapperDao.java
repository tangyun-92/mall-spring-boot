package com.tang.mall.dao;

import com.tang.mall.mbg.model.UmsAdmin;
import org.springframework.stereotype.Repository;

@Repository
public interface UmsAdminMapperDao {

    UmsAdmin selectByName(String username);

}