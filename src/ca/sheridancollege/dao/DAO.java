package ca.sheridancollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import ca.sheridancollege.beans.Dog;
import ca.sheridancollege.beans.SendEmail;
public class DAO {
	SessionFactory sessionFactory = new Configuration()
			.configure("ca/sheridancollege/config/hibernate.cfg.xml").buildSessionFactory();
	SendEmail sendEmail = new SendEmail();
	public void addDog(Dog dog) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String message = "Confirmation Dog name" + '\n' + dog.getName() + ", Breed" +dog.getBreed() + ", Group" + dog.getDogGroup() + ", Gender" + dog.getGender() + ", Class or Speciality" + dog.getSpecialty() + '\n' + "Register successfully";
		if(dog.getEmail() != null) {
			sendEmail.sendAEmailToDogPerson(dog.getEmail(), message);
		}
		session.save(dog);
		session.getTransaction().commit();
		session.close();
	}
	public void assAwards(Dog dog) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(dog);
		session.getTransaction().commit();
		session.close();
	}
	public void generateDummyRecord() {
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	String dogGroup[] = {"Sporting Dogs", "Hounds", "Working Dogs", "Terriers", "Toys", "Non-Sporting", "Herding"};
	String breeds[] = {"Anatolian Shepherd Dog", "Retriever", "Old English Sheepdog", "Rough Collie", "Smooth Collie"};
	String gender[] = {"male", "female"};	
	String type[] = {"Class", "Specialty"};	
	String hostDates[] = {"Jan-4-2019", "Jan-5-2019"};
	for(int i=1;i<=100;i++) {
		int genderIndexAndType = (int)(Math.random() * 2);
		int breedIndex = (int)(Math.random() * 5);
		int groupIndex = (int)(Math.random() * 7);
		Dog dog = new Dog("Dog" + i,"Owner" + i,breeds[breedIndex],dogGroup[groupIndex],gender[genderIndexAndType], "email" + i, type[genderIndexAndType], hostDates[genderIndexAndType], "", "");	
		session.save(dog);
	}
	session.getTransaction().commit();
	session.close();
	}
	public List<Dog> getDogs() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
	    javax.persistence.Query query = session.createQuery("from Dog");
	    List<Dog> dogs = query.getResultList();
		
		session.getTransaction().commit();
		session.close();
		return dogs;
	}	
	public List<Dog> querySearchByValueCriteria(String searchBy, String value) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
		CriteriaQuery<Dog> criteria = criteriaBuilder.createQuery(Dog.class);
		Root<Dog> root = criteria.from(Dog.class);
		criteria.where(criteriaBuilder.equal(root.get(searchBy), value));
		List<Dog> DogList = session.createQuery(criteria).getResultList();
		
		session.getTransaction().commit();
		session.close();
		
		return DogList;
	}

	
	public Dog queryByID(int entryNumber) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Query query = session.createQuery("from Dog where entryNumber=:entryNumber");
		query.setParameter("entryNumber", entryNumber);
		List<Dog> dogs = (List<Dog>) query.getResultList();

		session.getTransaction().commit();
		session.close();

		Dog d = new Dog();
		if (!dogs.isEmpty()) {
			d = dogs.get(0);
		}
		return d;
	}
	
	public void deleteDog(int index) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Dog s = (Dog) session.get(Dog.class, index);
		session.delete(s);

		session.getTransaction().commit();
		session.close();
	}

public List<Dog> partFive() {
	List<Dog> dogsList = getDogs();
    ArrayList<String> sportingDogs = new ArrayList<String>(); 
	for (int j = 0; j < dogsList.size(); j++) {
	String breadname = dogsList.get(j).getBreed();
	int maleNumber = 0;
	int femaleNumber = 0;
	int maleSpeciality = 0;
	int femaleSpeciality = 0;
	  for (int i = 0; i < dogsList.size(); i++) {
		if(dogsList.get(i).getGender().equals("Male") && dogsList.get(i).getSpecialty().equals("Class")) {			
			maleNumber++;
			}
		if(dogsList.get(i).getGender().equals("Male") && dogsList.get(i).getSpecialty().equals("Specialty")) {			
			maleSpeciality++;
			}
		if(dogsList.get(i).getGender().equals("Female") && dogsList.get(i).getSpecialty().equals("Class")) {			
			femaleNumber++;
			}
		if(dogsList.get(i).getGender().equals("Female") && dogsList.get(i).getSpecialty().equals("Specialty")) {			
			femaleSpeciality++;
			}
		}
	}
		return dogsList;
}
}
