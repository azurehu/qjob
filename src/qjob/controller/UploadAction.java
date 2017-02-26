package qjob.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadAction {
    
    @RequestMapping(value="headImgChange.action", method=RequestMethod.POST)
    
    public String upload(Model model,@RequestParam MultipartFile file,HttpSession session,HttpServletResponse response){
	System.out.println("get it");
  	if(file!=null&&!file.isEmpty()){
  	    try {
  		byte[] b=file.getBytes();
  		String name=file.getOriginalFilename();
  		session.setAttribute("imgname", name);
  		OutputStream out=new FileOutputStream("F://小组项目admin//job//WebContent//images//"+name);
  		out.write(b);
  		out.flush();   
  		
  		out.close();
  	    } catch (FileNotFoundException e) {
  		// TODO Auto-generated catch block
  		e.printStackTrace();
  	    } catch (IOException e) {
  		// TODO Auto-generated catch block
  		e.printStackTrace();
  	    }
  	    model.addAttribute("msg","上传成功！");
  	    //response.setHeader("refresh", "5;url=left.jsp");
  	    
  	}else{
  	    model.addAttribute("msg","上传失败！");
  	}
  	
  	return "error";
      }
}
