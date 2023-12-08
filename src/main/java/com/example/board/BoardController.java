package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class BoardController {
   @Autowired
    BoardService boardService;
    @RequestMapping("/board/list")
    public String boardlist(Model model){
        List<BoardVO> list = boardService.getBoardList();
        model.addAttribute("list",list);
        return "boardlist";
    }

    @RequestMapping("/board/add")
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo){
        int i = boardService.insertBoard(vo);
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!");
        return "redirect:list";
    }

    @RequestMapping(value = "/board/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("boardVO", boardVO);
        return "editform";
    }

    @RequestMapping(value = "/board/editok", method = RequestMethod.POST)
    public String editPostOK(BoardVO vo){
        int i = boardService.updateBoard(vo);
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!");
        return "redirect:list";
    }

}
