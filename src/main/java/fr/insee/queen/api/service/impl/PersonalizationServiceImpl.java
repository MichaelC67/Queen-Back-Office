package fr.insee.queen.api.service.impl;

import java.util.Optional;
import java.util.UUID;

import fr.insee.queen.api.repository.SimpleApiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import fr.insee.queen.api.domain.Personalization;
import fr.insee.queen.api.domain.SurveyUnit;
import fr.insee.queen.api.repository.ApiRepository;
import fr.insee.queen.api.repository.PersonalizationRepository;
import fr.insee.queen.api.service.AbstractService;
import fr.insee.queen.api.service.PersonalizationService;

@Service
public class PersonalizationServiceImpl extends AbstractService<Personalization, UUID> implements PersonalizationService {

    protected final PersonalizationRepository personalizationRepository;

	@Autowired
	private SimpleApiRepository simpleApiRepository;

    @Autowired
    public PersonalizationServiceImpl(PersonalizationRepository repository) {
        this.personalizationRepository = repository;
    }

    @Override
    protected ApiRepository<Personalization, UUID> getRepository() {
        return personalizationRepository;
    }

	@Override
	public void save(Personalization personalization) {
		personalizationRepository.save(personalization);
	}
	
	public Optional<Personalization> findBySurveyUnitId(String id){
		return personalizationRepository.findBySurveyUnitId(id);
	}

	@Override
	public void updatePersonalizationWithoutHibernate(String id, JsonNode personalizationValues) {
		simpleApiRepository.updateSurveyUnitPersonalization(id, personalizationValues);
	}

	public void updatePersonalization(SurveyUnit su, JsonNode persValue) {
		Optional<Personalization> persOptional = personalizationRepository.findBySurveyUnitId(su.getId());
		if (!persOptional.isPresent()) {
			Personalization newPers = new Personalization();
			newPers.setSurveyUnit(su);
			newPers.setValue(persValue);
			personalizationRepository.save(newPers);
		} else {
			Personalization pers = persOptional.get();
			pers.setValue(persValue);
			personalizationRepository.save(pers);
		}
	}

}
