package com.devsuperior.dslearnbds.services;
import com.devsuperior.dslearnbds.DTO.UserDTO;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;


@Service
public class UserService implements UserDetailsService {


    private static Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserRepository repository;

    @Autowired
    private AuthService authService;

    @Transactional(readOnly = true)
    public UserDTO findByID(Long id){
        authService.validateSelfOrAdmin(id);
        Optional<User> user = repository.findById(id);
        User obj = user.orElseThrow(() -> new ResourceNotFoundException("Id não existe"));
        return new UserDTO(obj);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = repository.findByEmail(s);
        if(user == null){
            logger.error("Usuário não encontrado migão = " + s);
            throw new UsernameNotFoundException("Email não encontrado");
        }
        logger.info("Usuário encontrado = " + s);
        return user;
    }
}
