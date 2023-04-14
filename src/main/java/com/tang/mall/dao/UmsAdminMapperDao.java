package com.tang.mall.dao;

import com.tang.mall.dto.UmsAdminListParam;
import com.tang.mall.mbg.model.UmsAdmin;
import com.tang.mall.vo.UmsAdminVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UmsAdminMapperDao {

    UmsAdmin selectByName(String username);

    List<UmsAdminVO> selectList(@Param("query")UmsAdminListParam umsAdminListParam);

    int batchDelete(@Param("ids") Integer[] ids);

}