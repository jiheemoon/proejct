package com.common.mapper;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

/**
 * AbstractSqlSession 클래스
 * 
 * MyBatis DAO는 AbstractSqlSession을 상속받아 구현
 */
public abstract class AbstractSqlSession extends AbstractMapper {

    @Resource(name = "moon.sqlSession")
    public void setSqlSessionFactory(SqlSessionFactory sqlSession) {

        super.setSqlSessionFactory(sqlSession);
    }

    @Override
    public SqlSession getSqlSession() {

        return super.getSqlSession();
    }

}
