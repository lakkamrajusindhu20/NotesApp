package com.codegnan.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codegnan.model.Note;

@Repository
public interface NoteRepository extends JpaRepository<Note,Integer> {

}
