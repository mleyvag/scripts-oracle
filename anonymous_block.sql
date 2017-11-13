SET SERVEROUTPUT ON
DECLARE
  v_var1 VARCHAR2(20);
  v_var2 NUMBER;
  v_var3 DATE;
BEGIN
  v_var1 := 'Miguel';
  v_var2 := 26;
  v_var3 := SYSDATE + 7;
  DBMS_OUTPUT.PUT_LINE(' v_var1=' || v_var1 ||
                       ' v_var2=' || v_var2 ||
                       ' v_var3=' || v_var3);
END;
