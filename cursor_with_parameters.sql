SET SERVEROUTPUT ON
DECLARE
  CURSOR c_employees(code NUMBER, str VARCHAR2) IS 
    SELECT * FROM employees WHERE employee_id < code
    AND first_name LIKE '%' || str || '%';
BEGIN
  FOR employee IN c_employees(105, 'a') LOOP
    DBMS_OUTPUT.PUT_LINE('Employee= ' || employee.first_name);
  END LOOP;
END;

