-- Add constraints to tables created

-- Foreign key constraint on "emp_title_id" column in "employees" table
ALTER TABLE employees
ADD CONSTRAINT fk_employees_emp_title_id
FOREIGN KEY (emp_title_id)
REFERENCES titles (title_id);

-- CHECK constraint on "sex" column in "employees" table
ALTER TABLE employees
ADD CONSTRAINT CHK_sex_validation
CHECK (sex IN ('F', 'M'));

-- Foreign key constraint on "emp_no" column in "salaries" table
ALTER TABLE salaries
ADD CONSTRAINT fk_salaries_emp_no
FOREIGN KEY (emp_no)
REFERENCES employees (emp_no);

-- Foreign key constraints on "emp_no" and "dept_no" columns in "dept_emp" table
ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_emp_no
FOREIGN KEY (emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_dept_no
FOREIGN KEY (dept_no)
REFERENCES departments (dept_no);