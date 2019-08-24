package com.codingdojo.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lookify.models.Song;
import com.codingdojo.lookify.repositories.SongRepository;

@Service
public class SongService {
	private final SongRepository songRepository;
	
	public SongService(SongRepository songRepository) {
		this.songRepository = songRepository;
	}
	
	// get all songs
	public List<Song> allSongs(){
		return songRepository.findAll();
	}
	
	// get all songs containing an artist name
	public List<Song> findSongsByArtist(String artistName){
		return songRepository.findByArtistContaining(artistName);
	}
	
	/*
	// get all songs containing an artist name
	public List<Song> findSongsByTitle(String songTitle){
		return songRepository.findByTitleContaining(songTitle);
	}
	*/
	
	// get one song by id
	public Song findSong(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		} else {
			return null;
		}
	}
	
	// get top 10 songs
	public List<Song> findTop10(){
		return songRepository.findTop10ByOrderByRatingDesc();
	}
	
	// add a song
	public Song addSong(Song s) {
		return songRepository.save(s);
	}
	
	// update a song by id
	public Song updateSong(Song s) {
		return songRepository.save(s);
	}
	
	/**  
	// update a song by all fields (???)
	public Song updateSong(Long id, String title, String artist, Double length, Integer rating, String album, Integer year) {
		Song songToUpdate = findSong(id);
		if(songToUpdate.getId() == id) {
			songToUpdate.setTitle(title);
			songToUpdate.setArtist(artist);
			songToUpdate.setLength(length);
			songToUpdate.setRating(rating);
			songToUpdate.setAlbum(album);
			songToUpdate.setYear(year);
			return addSong(songToUpdate);
		} else {
			return null;
		}
	}
	*/
	
	// delete a song by id
	public void deleteSong(Long id) {
		songRepository.deleteById(id);
	}

}
