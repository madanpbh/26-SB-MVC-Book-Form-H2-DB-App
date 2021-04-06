package com.madan.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.madan.entity.BookEntity;

public interface BookRepository extends JpaRepository<BookEntity, Serializable> {

}
