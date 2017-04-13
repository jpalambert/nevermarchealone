package fr.formation.spring.controller;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

import org.springframework.validation.Validator;

import fr.formation.spring.model.FormUser;

@Component
public class UtilisateurValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return arg0.equals(FormUser.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		FormUser formUser = (FormUser) target;
		if (!formUser.getConfirmPassword().equals(formUser.getPassword())) {
			errors.reject("confirmPassword", "Mots de passe differents!");
		}
	}

}
