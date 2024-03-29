package com.Esraa.Lookify.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Lookify")
public class Lookify {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Size(min = 5, message = "Name must be at least 5 characters")
	private String title;

	@NotNull
	@Size(min = 5, message = "Creator must be at least 5 characters")
	private String artist;

	@NotNull
	@Min(value = 1, message = "rating must be between 1 - 10")
	@Max(value = 10, message = "rating must be between 1 - 10")
	private double rating;

	// This will not allow the createdAt column to be updated after creation
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	public Lookify() {
		super();
	}

	public Lookify(String title, String artist, double rating) {
		this.title = title;
		this.artist = artist;
		this.rating = rating;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public Long getId() {
		return id;
	}

}
