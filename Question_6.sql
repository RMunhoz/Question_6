/*EXECUTANDO A FUÇÃO DE CONTAGEM DE CARACTERES*/

SET SERVEROUTPUT ON
SET VERIFY OFF
BEGIN
  DECLARE
  v_teste VARCHAR2(20) := NULL;  
  BEGIN
    v_teste := contagem_caract(p_texto => 'contagem');    
    dbms_output.put_line('A string possui '||v_teste||' Caracteres');
  END;
END;
