package ca.sheridancollege.beans;
import lombok.*;

import java.util.List;

import javax.persistence.*;
@NoArgsConstructor
@Data
@Entity
public class Dog {	
	@Id
	@GeneratedValue
	private int entryNumber;
	private String name;
	private String ownerName;
	private String breed;
	private String dogGroup;
	private String gender;
	private String email;
	private String specialty;
	private String dayOfShow;
	private String awards;
	private String awardsInGroup;
	
	private String[] dogGroups = {"Sporting Dogs","Hounds","Working Dogs","Terriers","Toys","Non-Sporting","Herding"};
	private String[] dogBreeds = {"Labrador Retriever","German Shepherd","Golden Retriever","French Bulldog","Bulldog","Beagel","Poodle","Rottweiler","Yorkshire Terrier","Boxer","Dachshund","Great Dane"};
	private String[] dogGenders = {"Male","Female"};
	private String[] dogSpecialtiesOrClass = {"Class","Specialty"};
	private String[] searchByItems = {"By Entry Number", "By Owner", "By Breed", "By Group"};
	private String[] awardNames = {"Best of Breed", "Reserve Winners", "Best of Opposite Sex"};
	private String[] awardGroupNames = {"First in Group", "Second in Group", "Third in Group", "Fourth in Group"};
	
	public Dog(String name, String ownerName, String breed, String dogGroup, String gender, String email, String specialty, String dayOfShow, String awards, String awardsInGroup) {
		this.name = name;
		this.ownerName = ownerName;
		this.breed = breed;
		this.dogGroup = dogGroup;
		this.gender = gender;
		this.email = email;
		this.specialty = specialty;
		this.dayOfShow = dayOfShow;
		this.awards = awards;
		this.awardsInGroup = awardsInGroup;
	}
	public Dog(int entryNumber,String name, String ownerName, String breed, String dogGroup, String gender,String email, String specialty, String dayOfShow, String awards, String awardsInGroup) {
		this.entryNumber = entryNumber;
		this.name = name;
		this.ownerName = ownerName;
		this.breed = breed;
		this.dogGroup = dogGroup;
		this.gender = gender;
		this.email = email;
		this.specialty = specialty;
		this.dayOfShow = dayOfShow;
		this.awards = awards;
		this.awardsInGroup = awardsInGroup;
	}
}
