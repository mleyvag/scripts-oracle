SET SERVEROUTPUT ON
DECLARE
  CURSOR  c_employees IS SELECT * FROM employees;
BEGIN
  FOR employee in c_employees LOOP
    DBMS_OUTPUT.PUT_LINE('Employee= ' || employee.first_name);
  END LOOP;
END;