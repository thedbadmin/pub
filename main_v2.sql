CREATE TABLE employees (
    emp_id      SERIAL PRIMARY KEY,
    emp_name    VARCHAR(100) NOT NULL,
    department  VARCHAR(50),
    salary      NUMERIC(10,2),
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees (emp_name, department, salary)
VALUES ('Rahul Sharma', 'IT', 85000);

INSERT INTO employees (emp_name, department, salary)
VALUES ('Anita Verma', 'HR', 65000);

INSERT INTO employees (emp_name, department, salary)
VALUES ('Suresh Kumar', 'Finance', 78000);

INSERT INTO employees (emp_name, department, salary)
VALUES ('Neha Singh', 'IT', 92000);

INSERT INTO employees (emp_name, department, salary)
VALUES ('Amit Patel', 'Sales', 70000);

CREATE TABLE projects (
    project_id   SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    emp_id       INT REFERENCES employees(emp_id),
    start_date   DATE,
    status       VARCHAR(20)
);
CREATE TABLE projects (
    project_id   SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    emp_id       INT REFERENCES employees(emp_id),
    start_date   DATE,
    status       VARCHAR(20)
);

INSERT INTO projects (project_name, emp_id, start_date, status)
VALUES ('Postgres Automation', 1, '2024-01-15', 'ACTIVE');

INSERT INTO projects (project_name, emp_id, start_date, status)
VALUES ('HR Portal', 2, '2024-02-01', 'ACTIVE');

INSERT INTO projects (project_name, emp_id, start_date, status)
VALUES ('Finance Reporting', 3, '2023-12-10', 'COMPLETED');

INSERT INTO projects (project_name, emp_id, start_date, status)
VALUES ('CI/CD Pipeline', 4, '2024-03-05', 'ACTIVE');

INSERT INTO projects (project_name, emp_id, start_date, status)
VALUES ('Sales Dashboard', 5, '2024-01-25', 'ON-HOLD');
