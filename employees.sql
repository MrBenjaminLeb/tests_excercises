-- Suggested testing environment:
-- http://sqlite.online/

-- Example case create statement:
CREATE TABLE departments (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
  id INTEGER PRIMARY KEY NOT NULL,
  departmentId INTEGER NOT NULL REFERENCES departments(id),
  name VARCHAR(50) NOT NULL
);

CREATE TABLE departmentReport (
  departmentName VARCHAR(50) NOT NULL,
  employeeCount INTEGER NOT NULL
);

INSERT INTO departments(id, name) VALUES(1, 'Sales');
INSERT INTO departments(id, name) VALUES(2, 'Customer Support');

INSERT INTO employees(id, departmentId, name) VALUES(1, 1, 'Mike Brewer');
INSERT INTO employees(id, departmentId, name) VALUES(2, 1, 'Edd China');
INSERT INTO employees(id, departmentId, name) VALUES(3, 2, 'Randy Marsh');

-- Insert answer here

SELECT * FROM departmentReport;

-- Expected output (in any order):
-- departmentName      employeeCount
-- ---------------------------------
-- Sales               2
-- Customer Support    1

-- Explanation:
-- In this example.
-- Mike Brewer and Edd China are in the Sales Department. Randy Marsh is in the Customer Support Department.
-- The Sales Department has two employees, and the Customer Support Department has one.

INSERT INTO departmentReport (departmentName, emlployeeCount)
SELECT departmentId, COUNT(departmentId) FROM employees
GROUP BY  departmentId 