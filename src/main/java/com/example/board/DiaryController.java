package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
@Controller
@RequestMapping(value="/board")
public class DiaryController {
    @Autowired
    DiaryService diaryService;
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String boardlist(Model model){
        List<DiaryVO> list= diaryService.getBoardList();
        model.addAttribute("list",list);
        return "list";
    }
    @RequestMapping(value="/add", method = RequestMethod.GET)
    public String addPost(){
        return "addform";
    }
    @RequestMapping(value="/addok",method = RequestMethod.POST)
    public String addPostOK(DiaryVO vo){
        if(diaryService.insertBoard(vo)==0){
            System.out.println("데이터 추가 실패");
        }
        else{
            System.out.println("데이터 추가 성공!!!");
        }
        return "redirect:list";
    }
    @RequestMapping(value = "/editform/{id}",method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        DiaryVO boardVO = diaryService.getBoard(id);
        model.addAttribute("u",boardVO);
        return "editform";
    }
    @RequestMapping(value="/editok",method = RequestMethod.POST)
    public String editPostOk(DiaryVO vo){
        if(diaryService.updateBoard(vo)==0){
            System.out.println("데이터 수정 실패");
        }
        else{
            System.out.println("데이터 수정 성공");
        }
        return  "redirect:list";
    }
    @RequestMapping(value="/deleteok/{id}",method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id){
        if(diaryService.deleteBoard(id)==0){
            System.out.println("데이터 삭제 실패");
        }
        else{
            System.out.println("데이터 삭제 성공");
        }
        return  "redirect:../list";
    }
    @RequestMapping(value = "/viewform/{id}",method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model){
        DiaryVO boardVO = diaryService.getBoard(id);
        model.addAttribute("u",boardVO);
        return "view";
    }
}
