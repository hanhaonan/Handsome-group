package com.yeqifu.bus.mapper;

import com.yeqifu.bus.domain.Sheet2;
import com.yeqifu.bus.vo.Sheet2Vo;

import java.util.List;

public interface Sheet2Mapper {
    int deleteByPrimaryKey(String id);

    int insert(Sheet2 record);

    int insertSelective(Sheet2 record);

    Sheet2 selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Sheet2 record);

    int updateByPrimaryKey(Sheet2 record);

    List<Sheet2> queryAllSheet2(Sheet2Vo Sheet2Vo);
}