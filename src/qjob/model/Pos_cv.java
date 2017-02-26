package qjob.model;

import java.util.Date;

public class Pos_cv {
    private Integer poscvid;

    private Integer posid;

    private String username;

    private Date time;
    
    private Integer status;
    
    private Cv cv;
    
    private Date watchtime;
    
    private Position position;

    public Integer getPoscvid() {
        return poscvid;
    }

    public void setPoscvid(Integer poscvid) {
        this.poscvid = poscvid;
    }

    public Integer getPosid() {
        return posid;
    }

    public void setPosid(Integer posid) {
        this.posid = posid;
    }
  

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Cv getCv() {
        return cv;
    }

    public void setCv(Cv cv) {
        this.cv = cv;
    }

    public Date getWatchtime() {
        return watchtime;
    }

    public void setWatchtime(Date watchtime) {
        this.watchtime = watchtime;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

  
}