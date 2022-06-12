CREATE TABLE employee (employeeid int NOT NULL PRIMARY KEY, name varchar(20), email varchar(50));
CREATE TABLE project (projectid int NOT NULL PRIMARY KEY, title varchar(20));
CREATE TABLE employee_project(employeeid int REFERENCES employee(employeeid), projectid int REFERENCES project(projectid), PRIMARY KEY (employeeid, projectid));

INSERT INTO employee(employeeid, name, email) VALUES
    (1, 'Joan', 'joan@acme.com'),
    (2, 'Anna', 'anna@acme.com'),
    (3, 'Laia', 'laia@acme.com');

INSERT INTO project(projectid, title) VALUES
    (11, 'Robot'),
    (22, 'VR'),
    (33, 'IA');

INSERT INTO employee_project(employeeid, projectid) VALUES
    (1,11),
    (1,22),
    (2,11);