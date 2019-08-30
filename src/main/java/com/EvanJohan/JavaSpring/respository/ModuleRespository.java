package com.EvanJohan.JavaSpring.respository;

import com.EvanJohan.JavaSpring.bean.Module;
import com.EvanJohan.JavaSpring.bean.ModuleRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class ModuleRespository {
    @Autowired
    JdbcTemplate jdbcTemplate;
    public List<Module> getAllModule() {
        return  jdbcTemplate.query("select distinct m.modulename as moduleName, mu.moduleorder as moduleOrder from ecommerce.users u \n" +
                "inner join ecommerce.moduleusers mu on u.id=mu.usersid\n" +
                "inner join ecommerce.modules m on mu.ModuleId=m.id\n" +
                "order by mu.moduleorder asc",new ModuleRowMapper());
    }

    public List<Module> findById(Integer id) {
        String sql="select m.modulename as moduleName, mu.moduleorder as moduleOrder from ecommerce.users u \n" +
                "inner join ecommerce.moduleusers mu on u.id=mu.usersid\n" +
                "inner join ecommerce.modules m on mu.ModuleId=m.id\n" +
                "where u.id=? order by mu.moduleorder asc";
        try
        {
            return jdbcTemplate.query(
                    sql, new Object []{ id },new ModuleRowMapper());
        }
        catch (EmptyResultDataAccessException ex)
        {
            return  null;
        }
    }
}
