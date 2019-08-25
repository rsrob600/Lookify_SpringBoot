package com.codingdojo.lookify.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.lookify.models.Song;
import com.codingdojo.lookify.services.SongService;

@Controller
public class SongController {
private final SongService songService;

	public SongController(SongService songService) {
		this.songService = songService;
	}
	
	// Authorize method route needs to go here (will learn later in the program)
	// Login route
	@RequestMapping("/")
	public String index() {
		return "views/index.jsp";
	}
	
	// Home Dashboard route
	@RequestMapping("/dashboard")
	public String dashboard(Model model, @ModelAttribute("song") Song song) {
		ArrayList<Song> songs = (ArrayList<Song>) songService.allSongs();
		model.addAttribute("songs", songs);
		return "views/dashboard.jsp";
	}
	
	// Add new song route
	@RequestMapping("/songs/new")
	public String newSong(@ModelAttribute("song")Song song) {
		return "views/add.jsp";
	}
	
	// Commit save NEW song route (WITH A POST Mapping)
	@PostMapping("/addSong")
	public String addSong(@Valid @ModelAttribute("song") Song song, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("errors", result.getAllErrors());
			return "views/add.jsp";
		} else {
			songService.addSong(song);
			return "redirect:/dashboard";
		}
	}
	
	// Show One song details route
	@RequestMapping("/songs/{id}")
	public String showSong(@PathVariable("id") Long id, Model model) {
		Song song = songService.findSong(id);
		model.addAttribute("song", song);
		return "views/details.jsp";
	}
	
	// get one song to edit route
	@RequestMapping("/songs/edit/{id}")
	public String editSong(@PathVariable("id") Long id, Model model) {
		Song song = songService.findSong(id);
		model.addAttribute("song", song);
		return "views/edit.jsp";
	}
	
	// Commit edit of one EXISTING song route (with POST Mapping)
	//@RequestMapping(value="/updateSong/{id}", method=RequestMethod.PUT)
	@PutMapping(value="/updadteSong/{id}")
	public String updateSong(@Valid @ModelAttribute("song") Song song, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("errors", result.getAllErrors());
			return "views/edit.jsp";
		} else {
			songService.updateSong(song);
			return "redirect:/dashboard";
		}
	}
	
	// Delete One SELECTED song route
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		songService.deleteSong(id);
		return "redirect:/dashboard";
	}
	
	// Search by an ARTIST route (with POST Mapping)
	@PostMapping("/search")
	public String searchArtist(Model model, @RequestParam("artist") String artist) {
		List<Song> songs = songService.findSongsByArtist(artist);
		model.addAttribute("songs", songs);
		model.addAttribute("artist", artist);
		return "views/search.jsp";
	}
	
	// Search by Top 10 Rated Artist route
	@RequestMapping("/topSongs")
	public String topSongs(Model model) {
		List<Song> topsongs = songService.findTop10();
		model.addAttribute("topsongs", topsongs);
		return "views/top10.jsp";
	}


	
}
