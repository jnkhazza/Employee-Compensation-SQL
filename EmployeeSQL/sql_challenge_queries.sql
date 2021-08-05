-- CHALLENGE #1
CREATE VIEW challenge_one AS 
SELECT e.emp_no, last_name, first_name, sex, salary 
FROM employees e
    LEFT JOIN salaries s
	ON e.emp_no = s.emp_no
	
SELECT * FROM challenge_one

-- CHALLENGE #2
CREATE VIEW challenge_two AS 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%'

SELECT * FROM challenge_two

-- CHALLENGE #3
CREATE VIEW challenge_three AS
SELECT d.dept_no, dept_name, m.emp_no, last_name, first_name 
FROM departments d
	LEFT JOIN dep_manager m 
	ON d.dept_no = m.dept_no
		LEFT JOIN employees e
		ON e.emp_no = m.emp_no
		ORDER BY dept_no ASC

SELECT * FROM challenge_three

--CHALLENGE #4
CREATE VIEW challenge_four AS
SELECT e.emp_no, last_name, first_name, d.dept_name 
FROM departments d
	LEFT JOIN dep_emp em 
	ON d.dept_no = em.dept_no
		LEFT JOIN employees e
		ON e.emp_no = em.emp_no
		ORDER BY emp_no ASC

SELECT * FROM challenge_four

-- CHALLENGE #5
CREATE VIEW challenge_five AS
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE '%B%'

SELECT * FROM challenge_five

--CHALLENGE #6
CREATE VIEW challenge_six AS
SELECT e.emp_no, last_name, first_name, d.dept_name
FROM departments d
	LEFT JOIN dep_emp em 
	ON d.dept_no = em.dept_no
		LEFT JOIN employees e
		ON e.emp_no = em.emp_no
		WHERE d.dept_name = 'Sales'
		ORDER BY emp_no ASC
		
SELECT * FROM challenge_six

-- CHALLENGE #7
CREATE VIEW challenge_seven AS
SELECT e.emp_no, last_name, first_name, d.dept_name
FROM departments d
	LEFT JOIN dep_emp em 
	ON d.dept_no = em.dept_no
		LEFT JOIN employees e
		ON e.emp_no = em.emp_no
		WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
		ORDER BY emp_no ASC

SELECT * FROM challenge_seven

-- CHALLENGE #8
CREATE VIEW challenge_eight AS
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY count DESC

SELECT * FROM challenge_eight