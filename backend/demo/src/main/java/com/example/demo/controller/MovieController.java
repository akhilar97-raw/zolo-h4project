package com.example.demo.controller;

import com.example.demo.model.Movie;
import com.example.demo.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class MovieController {

    @Autowired
    private MovieRepository movieRepository;

    // GET all movies
    @GetMapping("/movies")
    public List<Movie> getMovies() {
        return movieRepository.findAll();
    }

    // GET movie by ID
    @GetMapping("/movies/{id}")
    public Movie getMovieById(@PathVariable int id) {
        return movieRepository.findById(id).orElse(null);
    }

    // POST - add new movie
    @PostMapping("/movies")
    public Movie addMovie(@RequestBody Movie movie) {
        return movieRepository.save(movie);
    }

    // PUT - update movie
    @PutMapping("/movies/{id}")
    public Movie updateMovie(@PathVariable int id, @RequestBody Movie movie) {
        movie.setMovie_id(id);
        return movieRepository.save(movie);
    }

    // DELETE movie
    @DeleteMapping("/movies/{id}")
    public String deleteMovie(@PathVariable int id) {
        movieRepository.deleteById(id);
        return "Deleted successfully";
    }
}