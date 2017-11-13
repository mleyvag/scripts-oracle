SET SERVEROUTPUT ON
DECLARE
  CURSOR c_codes IS SELECT DISTINCT job_id FROM employees;
  CURSOR c_employees (code VARCHAR2) IS SELECT * FROM employees WHERE job_id = code;
BEGIN
  FOR code IN c_codes LOOP
    DBMS_OUTPUT.PUT_LINE('-----' || code.job_id || '-----');
    FOR employee IN c_employees(code.job_id) LOOP
      DBMS_OUTPUT.PUT_LINE('Employee= ' || employee.first_name);
    END LOOP;
  END LOOP;
END;