package com.EvanJohan.JavaSpring.bean;
import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ModuleRowMapper implements RowMapper {
   public Object mapRow(ResultSet rs,int rowNum)throws SQLException{
       Module module= new Module();
       module.setModuleName(rs.getString("moduleName"));
       module.setModuleOrder(rs.getString("moduleOrder"));

       return module;
   }
}
