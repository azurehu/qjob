package qjob.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import qjob.model.Page;
import qjob.model.Position;
import qjob.service.CompanyService;
import qjob.service.PositionService;

@Controller
public class JobAction {
    	@Autowired
	CompanyService companyService;
	@Autowired
	PositionService positionService;
	@RequestMapping(value="selectPos.action")
	public String selectPosition(Model model,String pageNumber){
		Page page=new Page();	
		if(pageNumber!=null&&pageNumber!=""){
			int num=Integer.parseInt(pageNumber);
			page.setPageNumber(num);
		}	
		List<Position> l=positionService.selectPositionAll();		
		page.setTotalCount(l.size());
		
		List<Position> list=positionService.selectPosition(page.getStartLine(),page.getPageSize());
		model.addAttribute("page",page);
		model.addAttribute("list",list);
		return "searchJob";
	}
	
	@RequestMapping(value="searchJobInfo.action")
	public String searchJobInfo(Model model,String posid,String msg){
		int id=Integer.parseInt(posid);
		Position pos=positionService.selectPositionInfo(id);
		model.addAttribute("pos",pos);
		model.addAttribute("msg",msg);
		System.err.println(msg);
		return "searchJobInfo";
	}
    	@RequestMapping(value="/positionList.action")
	public  @ResponseBody List<String> positionList(String industry){
		
		List<String> list = new ArrayList<String>();
		if(industry.trim().equals("IT")){
			list.add("Java开发");
			list.add("Web前段开发");
			list.add("Java测试");
			list.add("IOS开发");
		}else if(industry.trim().equals("网络")){
			list.add("网络运维");
			
		}else if(industry.trim().equals("动漫/游戏")){
			list.add("动漫设计");
			list.add("游戏测试");
			list.add("游戏开发");
			list.add("客服");
		}
		
		return list;
	}
    	@RequestMapping(value="/cityList.action")
	public @ResponseBody List<String> cityList(String province){
	
		List<String> list = new ArrayList<String>();
		if(province.trim().equals("辽宁")){
			list.add("沈阳");
			list.add("大连");
			list.add("铁岭");
			list.add("鞍山");
		}else if(province.trim().equals("吉林")){
			list.add("长春");
			list.add("吉林市");
			list.add("通化");
			list.add("延边");
		}else if(province.trim().equals("黑龙江")){
			list.add("哈尔滨");
			list.add("齐齐哈尔");
			list.add("牡丹江");
			list.add("佳木斯");
		}
		return list;
	}
    	
    	
    	
}
