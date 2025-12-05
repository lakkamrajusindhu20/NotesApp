package com.codegnan.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codegnan.Repository.NoteRepository;
import com.codegnan.model.Note;

@Service
public class NoteServiceImpl implements NoteService{
	
	@Autowired
	private NoteRepository noterepo;

	@Override
	public Note add(Note note) {
		return noterepo.save(note);
	}

	@Override
	public Note findbyid(Integer id) {
		Optional<Note> onote=noterepo.findById(id);
		if(onote.isPresent()) {
			return onote.get();
		}
		else {
			throw new RuntimeException("Note id is not found");
		}
	}

	@Override
	public List<Note> findallNotes() {
		return noterepo.findAll();
	}

	@Override
	public Note update(Integer id, Note note) {
		Note notedb=findbyid(id);
		notedb.setTitle_note(note.getTitle_note());
		notedb.setAuthoroftitle(note.getAuthoroftitle());
		notedb.setNotedescription(note.getNotedescription());
		return noterepo.save(notedb);
	}

	@Override
	public void Deletebyid(Integer id) {
		noterepo.deleteById(id);
		
	}

}
