package com.tang.mall.dao;

import com.tang.mall.dto.PmsBrandListParam;
import com.tang.mall.mbg.model.PmsBrand;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PmsBrandMapperDao {

    List<PmsBrand> selectList(@Param("query") PmsBrandListParam pmsBrandListParam);

    PmsBrand selectByName(String name);

    int batchDelete(@Param("ids") Integer[] ids);

}
