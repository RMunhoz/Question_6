/*6. Faça um programa que calcule o tamanho de um string informado pelo usuário 
(não usar nenhuma função para isso, tal como strlen() ou lenght());*/
CREATE OR REPLACE FUNCTION contagem_caract(p_texto IN VARCHAR2) RETURN  VARCHAR2 IS

BEGIN
  DECLARE
  v_count Varchar2(20);
  BEGIN
    SELECT REGEXP_COUNT(p_texto,'[0-9A-Za-z]')contagem
      INTO v_count
      FROM dual;  
    dbms_output.put_line('Possui '||v_count||' caracteres');
  END;
  
  RETURN v_count;
  
END;
