package qjob.model;

import java.util.List;

public class Cv {
    private Integer cvid;

    private String username;

    private String personname;

    private String sex;

    private String education;

    private Integer worktimes;

    private String birth;

    private String location;

    private String phone;

    private String email;

    private String onedescription;

    private String wposition;

    private String worktype;

    private String wlocation;

    private Integer wsalary;

    private String adddescription;

    private String perdescription;

    private String cvheadurl;
    
    private List<Cv_studyexperience> cv_studyexpList;
    
    private List<Cv_workexperience> cv_workexpList;
    
    private List<Cv_projectexperience> cv_projectexpList;

    public Integer getCvid() {
        return cvid;
    }

    public void setCvid(Integer cvid) {
        this.cvid = cvid;
    }

  

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPersonname() {
        return personname;
    }

    public void setPersonname(String personname) {
        this.personname = personname == null ? null : personname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public Integer getWorktimes() {
        return worktimes;
    }

    public void setWorktimes(Integer worktimes) {
        this.worktimes = worktimes;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth == null ? null : birth.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getOnedescription() {
        return onedescription;
    }

    public void setOnedescription(String onedescription) {
        this.onedescription = onedescription == null ? null : onedescription.trim();
    }

    public String getWposition() {
        return wposition;
    }

    public void setWposition(String wposition) {
        this.wposition = wposition == null ? null : wposition.trim();
    }

    public String getWorktype() {
        return worktype;
    }

    public void setWorktype(String worktype) {
        this.worktype = worktype == null ? null : worktype.trim();
    }

    public String getWlocation() {
        return wlocation;
    }

    public void setWlocation(String wlocation) {
        this.wlocation = wlocation == null ? null : wlocation.trim();
    }

    public Integer getWsalary() {
        return wsalary;
    }

    public void setWsalary(Integer wsalary) {
        this.wsalary = wsalary;
    }

    public String getAdddescription() {
        return adddescription;
    }

    public void setAdddescription(String adddescription) {
        this.adddescription = adddescription == null ? null : adddescription.trim();
    }

    public String getPerdescription() {
        return perdescription;
    }

    public void setPerdescription(String perdescription) {
        this.perdescription = perdescription == null ? null : perdescription.trim();
    }

    public String getCvheadurl() {
        return cvheadurl;
    }

    public void setCvheadurl(String cvheadurl) {
        this.cvheadurl = cvheadurl == null ? null : cvheadurl.trim();
    }

	public List<Cv_studyexperience> getCv_studyexpList() {
		return cv_studyexpList;
	}

	public void setCv_studyexpList(List<Cv_studyexperience> cv_studyexpList) {
		this.cv_studyexpList = cv_studyexpList;
	}

	public List<Cv_workexperience> getCv_workexpList() {
		return cv_workexpList;
	}

	public void setCv_workexpList(List<Cv_workexperience> cv_workexpList) {
		this.cv_workexpList = cv_workexpList;
	}

	public List<Cv_projectexperience> getCv_projectexpList() {
		return cv_projectexpList;
	}

	public void setCv_projectexpList(List<Cv_projectexperience> cv_projectexpList) {
		this.cv_projectexpList = cv_projectexpList;
	}

  
}