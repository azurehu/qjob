package qjob.model;

public class Page {
	private int totalCount =0;		//总记录数
	private int pageNumber =1;		//当前页数
	private int pageSize =5;			//页面显示数
	private int pageCount =0;		//总页数
	private int startLine =0;			//开始查询记录位置
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.action();
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getStartLine() {
		return startLine;
	}
	public void setStartLine(int startLine) {
		this.startLine = startLine;
	}
	
	public  void action(){
		if(this.totalCount%pageSize==0){
			this.pageCount=new Integer(this.totalCount/pageSize).intValue();
		}else{
			this.pageCount=new Integer(this.totalCount/pageSize).intValue()+1;
		}
		
		if(this.pageNumber<1){
			this.pageNumber=1;
		}
		if(this.pageNumber>this.pageCount){
			this.pageNumber=this.pageCount;
		}
		this.startLine=(this.pageNumber-1)*this.pageSize;
	}
	
	
}
