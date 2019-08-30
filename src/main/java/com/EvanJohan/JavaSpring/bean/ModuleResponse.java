package com.EvanJohan.JavaSpring.bean;

import java.util.List;

public class ModuleResponse extends ResponseBase {
    public List<Module> modules;

    public List<Module> getModules() {
        return modules;
    }

    public void setModules(List<Module> modules) {
        this.modules = modules;
    }
}
