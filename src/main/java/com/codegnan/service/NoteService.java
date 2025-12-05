package com.codegnan.service;

import java.util.List;

import com.codegnan.model.Note;

public interface NoteService {
	
	public Note add(Note note);
	public Note findbyid(Integer id);
	public List<Note> findallNotes();
	public Note update(Integer id,Note note);
	public void Deletebyid(Integer id);
	

}
