package com.codingdojo.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.lookify.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long> {
	// this method retrieves all the songs from the database copy
	List<Song> findAll();
	// this method retrieves songs containing artist name
	List<Song> findByArtistContaining(String search);
	// this method retrieves song containing a certain string
	//List<Song> findByTitleContaining(String search);
	// this method retrieves songs by rating
	List<Song> findTop10ByOrderByRatingDesc();
}
