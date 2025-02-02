--Challenge: Deliverable 1
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;

--Number of employees by their most recent job title who are about to retire
SELECT 
	COUNT (ut.emp_no), 
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY 
	title
ORDER BY COUNT DESC;

SELECT * FROM retirement_titles;
SELECT * FROM unique_titles;
SELECT * FROM retiring_titles;

--Challenge: Deliverable 2
--Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
	LEFT JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	LEFT JOIN titles AS t
		ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;