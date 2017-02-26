package qjob.model;

import java.util.Date;

public class Cv_projectexperience {
    private Integer projectid;

    private String username;

    private String porname;

    private String duty;

    private String starttime;

    private String endtime;

    private String prodescription;

    public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }



    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPorname() {
        return porname;
    }

    public void setPorname(String porname) {
        this.porname = porname == null ? null : porname.trim();
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

   

    public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getProdescription() {
        return prodescription;
    }

    public void setProdescription(String prodescription) {
        this.prodescription = prodescription == null ? null : prodescription.trim();
    }
}