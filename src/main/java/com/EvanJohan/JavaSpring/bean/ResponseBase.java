package com.EvanJohan.JavaSpring.bean;

public class ResponseBase {
    public String messages;
    public boolean acknowledge;

    public boolean isAcknowledge() {
        return acknowledge;
    }

    public void setAcknowledge(boolean acknowledge) {
        this.acknowledge = acknowledge;
    }



    public String getMessages() {
        return messages;
    }

    public void setMessages(String messages) {
        this.messages = messages;
    }
}
