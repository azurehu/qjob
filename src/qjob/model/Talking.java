package qjob.model;

import java.util.Date;

public class Talking {
    private Integer talkid;

    private String u1;

    private String u2;

    private String message;

    private Date time;

    public Integer getTalkid() {
        return talkid;
    }

    public void setTalkid(Integer talkid) {
        this.talkid = talkid;
    }

    public String getU1() {
        return u1;
    }

    public void setU1(String u1) {
        this.u1 = u1 == null ? null : u1.trim();
    }

    public String getU2() {
        return u2;
    }

    public void setU2(String u2) {
        this.u2 = u2 == null ? null : u2.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}