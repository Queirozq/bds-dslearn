package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.DTO.DeliverRevisionDTO;
import com.devsuperior.dslearnbds.entities.Deliver;
import com.devsuperior.dslearnbds.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {


    @Autowired
    private DeliverRepository repository;

    @Transactional
    public void saveRevision(Long id, DeliverRevisionDTO obj){
        Deliver deliver = repository.getOne(id);
        deliver.setStatus(obj.getStatus());
        deliver.setFeedback(obj.getFeedback());
        deliver.setCorrectCount(obj.getCorrectCount());
        repository.save(deliver);
    }
}
