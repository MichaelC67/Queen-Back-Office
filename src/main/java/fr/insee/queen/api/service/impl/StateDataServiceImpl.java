package fr.insee.queen.api.service.impl;

import java.util.Optional;
import java.util.UUID;

import fr.insee.queen.api.repository.SimpleApiRepository;
import liquibase.pro.packaged.A;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import fr.insee.queen.api.domain.StateData;
import fr.insee.queen.api.domain.StateDataType;
import fr.insee.queen.api.domain.SurveyUnit;
import fr.insee.queen.api.repository.ApiRepository;
import fr.insee.queen.api.repository.StateDataRepository;
import fr.insee.queen.api.service.AbstractService;
import fr.insee.queen.api.service.StateDataService;

@Service
public class StateDataServiceImpl extends AbstractService<StateData, UUID> implements StateDataService {
	private static final Logger LOGGER = LoggerFactory.getLogger(StateDataServiceImpl.class);

	@Autowired
	private StateDataRepository stateDataRepository;

    @Autowired
	private SimpleApiRepository simpleApiRepository;

    @Override
    protected ApiRepository<StateData, UUID> getRepository() {
        return stateDataRepository;
    }

	@Override
	public void save(StateData stateData) {
		stateDataRepository.save(stateData);
	}

	@Override
	public Optional<StateData> findDtoBySurveyUnitId(String id) {
		return stateDataRepository.findBySurveyUnitId(id);
	}
	
	public ResponseEntity<Object> updateStateData(String id, JsonNode json, SurveyUnit su) {
		Optional<StateData> stateDataOptional = stateDataRepository.findDtoBySurveyUnitId(id);
		StateData stateData;
		if (!stateDataOptional.isPresent()) {
			stateData = new StateData();
			stateData.setSurveyUnit(su);
		}else {
			stateData = stateDataOptional.get();
		}
		updateStateDataFromJson(stateData, json);
		stateDataRepository.save(stateData);
		LOGGER.info("PUT data for reporting unit with id {} resulting in 200", id);
		return ResponseEntity.ok().build();
	}

	@Override
	public ResponseEntity<Object> updateStateDataWithoutHibernate(String id, JsonNode dataValue) {
		simpleApiRepository.updateSurveyUnitStateDate(id, dataValue);
		return ResponseEntity.ok().build();
	}

	public void updateStateDataFromJson(StateData sd, JsonNode json) {
		Long date = json.get("date").longValue();
		String state = json.get("state").textValue();
		String currentPage = json.get("currentPage").textValue();
		if(date != null) {
			sd.setDate(date);
		}
		if(state != null) {
			sd.setState(StateDataType.valueOf(state));
		}
		if(currentPage != null) {
			sd.setCurrentPage(currentPage);
		}
	}

}
