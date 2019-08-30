package com.EvanJohan.JavaSpring;

import com.EvanJohan.JavaSpring.bean.Module;
import com.EvanJohan.JavaSpring.bean.ModuleResponse;
import com.EvanJohan.JavaSpring.bean.ModuleRowMapper;
import com.EvanJohan.JavaSpring.respository.ModuleRespository;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.client.RestTemplate;

import java.util.List;

import static org.mockito.ArgumentMatchers.nullable;
import static org.mockito.BDDMockito.given;

@RunWith(SpringRunner.class)
@SpringBootTest( webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class JavaSpringApplicationTests {
    @Autowired
    ModuleRespository moduleRespository;
	@Test
	public void contextLoads() {
	}

	@Test
	public void findByID()
    {
        int count=0;
        ModuleResponse moduleResponse= new ModuleResponse();
        for(int i=1;i<5;i++)
        {
            moduleResponse.modules=moduleRespository.findById(i);
            if(moduleResponse.modules.size()==5)
            {
                if(i==1){
                    if(moduleResponse.modules.get(1).getModuleName().contains("CategoryCard")) {
                        System.out.println("UserID :"+i+" ModuleName : "+moduleResponse.modules.get(1).getModuleName() +" with ModuleOrder:"+ moduleResponse.modules.get(1).getModuleOrder());
                        count++;
                    }
                }else if(i==2){
                    if(moduleResponse.modules.get(1).getModuleName().contains("NewsCard")) {
                        System.out.println("UserID :"+i+" ModuleName : "+moduleResponse.modules.get(1).getModuleName() +" with ModuleOrder:"+ moduleResponse.modules.get(1).getModuleOrder());
                        count++;
                    }
                }else if(i==3){
                    if(moduleResponse.modules.get(1).getModuleName().contains("FlashSaleCard")){
                        System.out.println("UserID :"+i+" ModuleName : "+moduleResponse.modules.get(1).getModuleName() +" with ModuleOrder:"+ moduleResponse.modules.get(1).getModuleOrder());
                        count++;
                    }
                }
            }
            Assert.assertNotNull(moduleResponse.modules);
        }
        if(count==3)
        {
            System.out.println("Success");
        }


    }


}
