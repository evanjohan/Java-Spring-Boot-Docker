package com.EvanJohan.JavaSpring.controller;

import com.EvanJohan.JavaSpring.bean.ResponseBase;
import com.EvanJohan.JavaSpring.bean.Module;
import com.EvanJohan.JavaSpring.bean.ModuleResponse;
import com.EvanJohan.JavaSpring.respository.ModuleRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/module")
public class ModuleController {

    @Autowired
    ModuleRespository moduleRespository;
    @GetMapping("/test")
    public String test(){
        return "testing";
    }

    @GetMapping
    public List<Module> getAllModule(){
        return moduleRespository.getAllModule();
    }

    @GetMapping(value="userID/{id}")
    public ResponseEntity<?>getModuleByUserID(@PathVariable("id") Integer id){
        ModuleResponse result=new ModuleResponse();
        ResponseBase message= new ResponseBase();
        result.modules=moduleRespository.findById(id);

        if(result.modules.size()==0) {
                message.messages="No modules found with user ID "+id;
                message.acknowledge=false;
                return new ResponseEntity<>(message,HttpStatus.NOT_FOUND);
        }
        result.acknowledge=true;
        result.messages="Get data modules by userID "+id+" success!";
        return new ResponseEntity<>(result,HttpStatus.OK);
    }


}
