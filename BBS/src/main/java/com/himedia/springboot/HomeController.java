package com.himedia.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller

public class HomeController {
@Autowired
private BoardDAO bdao;

	@GetMapping("/")
	public String home(HttpServletRequest req,Model model) {
		ArrayList<boardDTO> alBoard = bdao.getList();
		model.addAttribute("blist",alBoard);
		return "home";
	}
	@GetMapping("/view")
	public String view(HttpServletRequest req, Model model) {
	int seqno = Integer.parseInt(req.getParameter("seqno"));
	boardDTO bdto = bdao.view(seqno);
	bdao.hitup(seqno);
	model.addAttribute("bpost",bdto);
	return "view";
	}
	@GetMapping("/delete")
	public String delete(HttpServletRequest req) {
		int seqno = Integer.parseInt(req.getParameter("seqno"));
		bdao.delete(seqno);
		return "redirect:/";
		
			
	}
	@GetMapping("/write")
	public String write(HttpServletRequest req, Model model) {
		return "write";
	
	}
	@PostMapping("/insert")
	public String insert(HttpServletRequest req) {
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		bdao.insert(title, content,"writer");
		return "redirect:/";
	}
	@GetMapping("/update")
	public String update(HttpServletRequest req, Model model) {
		int seqno = Integer.parseInt(req.getParameter("seqno"));
		boardDTO bdto = bdao.view(seqno);
		model.addAttribute("bpost",bdto);
		return "update";
	}
}
