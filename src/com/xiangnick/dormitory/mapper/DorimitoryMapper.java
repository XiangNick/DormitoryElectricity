package com.xiangnick.dormitory.mapper;

import com.xiangnick.dormitory.po.Dorimitory;

public interface DorimitoryMapper {
    int deleteByPrimaryKey(String dormitoryId);

    int insert(Dorimitory record);

    int insertSelective(Dorimitory record);

    Dorimitory selectByPrimaryKey(String dormitoryId);

    int updateByPrimaryKeySelective(Dorimitory record);

    int updateByPrimaryKey(Dorimitory record);
}