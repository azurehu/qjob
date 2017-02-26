package qjob.model;

import java.util.Date;

public class Cv_workexperience {
    private Integer expid;

    private String username;

    private String excompany;

    private String exposition;

    private String jointime;

    private String leavetime;

    private String workdescription;

    public Integer getExpid() {
        return expid;
    }

    public void setExpid(Integer expid) {
        this.expid = expid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getExcompany() {
        return excompany;
    }

    public void setExcompany(String excompany) {
        this.excompany = excompany == null ? null : excompany.trim();
    }

    public String getExposition() {
        return exposition;
    }

    public void setExposition(String exposition) {
        this.exposition = exposition == null ? null : exposition.trim();
    }



    public String getJointime() {
		return jointime;
	}

	public void setJointime(String jointime) {
		this.jointime = jointime;
	}

	public String getLeavetime() {
		return leavetime;
	}

	public void setLeavetime(String leavetime) {
		this.leavetime = leavetime;
	}

	public String getWorkdescription() {
        return workdescription;
    }

    public void setWorkdescription(String workdescription) {
        this.workdescription = workdescription == null ? null : workdescription.trim();
    }
}