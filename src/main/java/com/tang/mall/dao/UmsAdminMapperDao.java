package com.tang.mall.dao;

import com.tang.mall.dto.UmsAdminListParam;
import com.tang.mall.mbg.model.UmsAdmin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UmsAdminMapperDao {

    UmsAdmin selectByName(String username);

    List<UmsAdmin> selectList(@Param("query")UmsAdminListParam umsAdminListParam);

    int batchDelete(@Param("ids") Integer[] ids);

}