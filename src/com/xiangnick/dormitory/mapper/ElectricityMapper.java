package com.xiangnick.dormitory.mapper;

import com.xiangnick.dormitory.po.Electricity;

public interface ElectricityMapper {
    int deleteByPrimaryKey(Integer eid);

    int insert(Electricity record);

    int insertSelective(Electricity record);

    Electricity selectByPrimaryKey(Integer eid);

    int updateByPrimaryKeySelective(Electricity record);

    int updateByPrimaryKey(Electricity record);
}