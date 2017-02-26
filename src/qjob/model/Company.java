package qjob.model;



public class Company {
    private Integer comid;

    private String comname;

    private String comlocation;

    private String comdescription;

    private String comtype;
    
    private String username;
    
    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname == null ? null : comname.trim();
    }

    public String getComlocation() {
        return comlocation;
    }

    public void setComlocation(String comlocation) {
        this.comlocation = comlocation == null ? null : comlocation.trim();
    }

    public String getComdescription() {
        return comdescription;
    }

    public void setComdescription(String comdescription) {
        this.comdescription = comdescription == null ? null : comdescription.trim();
    }

    public String getComtype() {
        return comtype;
    }

    public void setComtype(String comtype) {
        this.comtype = comtype == null ? null : comtype.trim();
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }


}