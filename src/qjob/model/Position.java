package qjob.model;

public class Position {
    private Integer posid;

    private String posname;

    private String salary;

    private String postype;

    private String education;

    private String times;

    private String posdescription;
    
    private int status;

    private String username;
 
    private Company company;
    public Integer getPosid() {
        return posid;
    }

    public void setPosid(Integer posid) {
        this.posid = posid;
    }

    public String getPosname() {
        return posname;
    }

    public void setPosname(String posname) {
        this.posname = posname == null ? null : posname.trim();
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary == null ? null : salary.trim();
    }

    public String getPostype() {
        return postype;
    }

    public void setPostype(String postype) {
        this.postype = postype == null ? null : postype.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times == null ? null : times.trim();
    }

    public String getPosdescription() {
        return posdescription;
    }

    public void setPosdescription(String posdescription) {
        this.posdescription = posdescription == null ? null : posdescription.trim();
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}



}