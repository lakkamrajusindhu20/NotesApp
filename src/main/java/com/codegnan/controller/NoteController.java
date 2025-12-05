package com.codegnan.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import com.codegnan.model.Note;
import com.codegnan.service.NoteService;


@Controller
@RequestMapping("/notes")
public class NoteController {


@Autowired
private NoteService noteService;


@GetMapping("/new")
public String newNoteForm(Model model) {
model.addAttribute("note", new Note());
return "new_note"; // JSP page name
}


@PostMapping("/save")
public String save(@ModelAttribute Note note) {
noteService.add(note);
return "redirect:/notes/all";
}


@GetMapping("/all")
public String getAllNotes(Model model) {
model.addAttribute("notes", noteService.findallNotes());
return "all_notes";
}


@GetMapping("/edit/{id}")
public String editNote(@PathVariable Integer id, Model model) {
model.addAttribute("note", noteService.findbyid(id));
return "edit_note";
}


@PostMapping("/update/{id}")
public String update(@PathVariable Integer id, @ModelAttribute Note note) {
noteService.update(id, note);
return "redirect:/notes/all";
}


@GetMapping("/delete/{id}")
public String delete(@PathVariable Integer id) {
noteService.Deletebyid(id);
return "redirect:/notes/all";
}
}
