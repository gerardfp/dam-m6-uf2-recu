package com.example.demo;
import javax.persistence.*;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
    public Integer employeeid;

    public String name;
    public String email;
}
