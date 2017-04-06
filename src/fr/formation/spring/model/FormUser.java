package fr.formation.spring.model;

import javax.persistence.Entity;

@Entity
public class FormUser extends Utilisateur {
	
	private String confirmPassword;

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

}
