package qjob.model;



public class Cv_studyexperience {
    private Integer edexpid;

    private String username;

    private String school;

    private String major;

    private String graduate;

    private String education;

    public Integer getEdexpid() {
        return edexpid;
    }

    public void setEdexpid(Integer edexpid) {
        this.edexpid = edexpid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }



    public String getGraduate() {
        return graduate;
    }

    public void setGraduate(String graduate) {
        this.graduate = graduate;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }
}