 Renctengle area Program
SP2-0734: unknown command beginning "1: Rencten..." - rest of line ignored.
SQL>
SQL> DECLARE
  2      length NUMBER := 10;
  3      width  NUMBER := 30;
  4      area   NUMBER;
  5  BEGIN
  6      area := length * width;
  7
  8      DBMS_OUTPUT.PUT_LINE('Area of rectangle = ' || area);
  9  END;
 10  /
Area of rectangle = 300

PL/SQL procedure successfully completed.





SQL> DECLARE
  2      length NUMBER := &length;
  3      width  NUMBER := &width;
  4      area   NUMBER;
  5  BEGIN
  6      area := length * width;
  7
  8      DBMS_OUTPUT.PUT_LINE('Area of rectangle = ' || area);
  9  END;
 10  /
Enter value for length: 20
old   2:     length NUMBER := &length;
new   2:     length NUMBER := 20;
Enter value for width: 40
old   3:     width  NUMBER := &width;
new   3:     width  NUMBER := 40;
Area of rectangle = 800

PL/SQL procedure successfully completed.




  

            find average of three numbers
 DECLARE
  2      num1 NUMBER := &num1;
  3      num2 NUMBER := &num2;
  4      num3 NUMBER := &num3;
  5      avg_num NUMBER;
  6  BEGIN
  7      avg_num := (num1 + num2 + num3) / 3;
  8
  9      DBMS_OUTPUT.PUT_LINE('Average = ' || avg_num);
 10  END;
 11  /
Enter value for num1: 50
old   2:     num1 NUMBER := &num1;
new   2:     num1 NUMBER := 50;
Enter value for num2: 100
old   3:     num2 NUMBER := &num2;
new   3:     num2 NUMBER := 100;
Enter value for num3: 40
old   4:     num3 NUMBER := &num3;
new   4:     num3 NUMBER := 40;
Average = 63.33333333333333333333333333333333333333

PL/SQL procedure successfully completed.




 Square area Porgram
SP2-0734: unknown command beginning "Square are..." - rest of line ignored.
SQL> DECLARE
  2      side NUMBER := &side;
  3      area NUMBER;
  4  BEGIN
  5      area := side * side;
  6
  7      DBMS_OUTPUT.PUT_LINE('Area of square = ' || area);
  8  END;
  9  /
Enter value for side: 5
old   2:     side NUMBER := &side;
new   2:     side NUMBER := 5;
Area of square = 25

PL/SQL procedure successfully completed.





 lorgest number of three number
SP2-0734: unknown command beginning "lorgest nu..." - rest of line ignored.
SQL> DECLARE
  2      num1 NUMBER := &num1;
  3      num2 NUMBER := &num2;
  4      num3 NUMBER := &num3;
  5      largest NUMBER;
  6  BEGIN
  7      IF num1 >= num2 AND num1 >= num3 THEN
  8          largest := num1;
  9      ELSIF num2 >= num1 AND num2 >= num3 THEN
 10          largest := num2;
 11      ELSE
 12          largest := num3;
 13      END IF;
 14
 15      DBMS_OUTPUT.PUT_LINE('Largest number = ' || largest);
 16  END;
 17  /
Enter value for num1: 20
old   2:     num1 NUMBER := &num1;
new   2:     num1 NUMBER := 20;
Enter value for num2: 80
old   3:     num2 NUMBER := &num2;
new   3:     num2 NUMBER := 80;
Enter value for num3: 50
old   4:     num3 NUMBER := &num3;
new   4:     num3 NUMBER := 50;
Largest number = 80

PL/SQL procedure successfully completed.




 Find The samallist number among three number
SP2-0734: unknown command beginning "Find The s..." - rest of line ignored.
SQL> DECLARE
  2      num1 NUMBER := &num1;
  3      num2 NUMBER := &num2;
  4      num3 NUMBER := &num3;
  5      smallest NUMBER;
  6  BEGIN
  7      IF num1 <= num2 AND num1 <= num3 THEN
  8          smallest := num1;
  9      ELSIF num2 <= num1 AND num2 <= num3 THEN
 10          smallest := num2;
 11      ELSE
 12          smallest := num3;
 13      END IF;
 14
 15      DBMS_OUTPUT.PUT_LINE('Smallest number = ' || smallest);
 16  END;
 17  /
Enter value for num1: 100
old   2:     num1 NUMBER := &num1;
new   2:     num1 NUMBER := 100;
Enter value for num2: 50
old   3:     num2 NUMBER := &num2;
new   3:     num2 NUMBER := 50;
Enter value for num3: 200
old   4:     num3 NUMBER := &num3;
new   4:     num3 NUMBER := 200;
Smallest number = 50

PL/SQL procedure successfully completed.




 Even and odd number program
SP2-0734: unknown command beginning "Even and o..." - rest of line ignored.
SQL> DECLARE
  2      num NUMBER := &num;
  3  BEGIN
  4      IF MOD(num, 2) = 0 THEN
  5          DBMS_OUTPUT.PUT_LINE(num || ' is Even Number');
  6      ELSE
  7          DBMS_OUTPUT.PUT_LINE(num || ' is Odd Number');
  8      END IF;
  9  END;
 10  /
Enter value for num: 15
old   2:     num NUMBER := &num;
new   2:     num NUMBER := 15;
15 is Odd Number

PL/SQL procedure successfully completed.





          simple calculater
SQL> DECLARE
  2      num1 NUMBER := &num1;
  3      num2 NUMBER := &num2;
  4      choice NUMBER;
  5      result NUMBER;
  6  BEGIN
  7      DBMS_OUTPUT.PUT_LINE('1. Addition');
  8      DBMS_OUTPUT.PUT_LINE('2. Subtraction');
  9      DBMS_OUTPUT.PUT_LINE('3. Multiplication');
 10      DBMS_OUTPUT.PUT_LINE('4. Division');
 11
 12      choice := &choice;
 13
 14      IF choice = 1 THEN
 15          result := num1 + num2;
 16          DBMS_OUTPUT.PUT_LINE('Addition = ' || result);
 17
 18      ELSIF choice = 2 THEN
 19          result := num1 - num2;
 20          DBMS_OUTPUT.PUT_LINE('Subtraction = ' || result);
 21
 22      ELSIF choice = 3 THEN
 23          result := num1 * num2;
 24          DBMS_OUTPUT.PUT_LINE('Multiplication = ' || result);
 25
 26      ELSIF choice = 4 THEN
 27          result := num1 / num2;
 28          DBMS_OUTPUT.PUT_LINE('Division = ' || result);
 29
 30      ELSE
 31          DBMS_OUTPUT.PUT_LINE('Invalid Choice');
 32      END IF;
 33  END;
 34  /
Enter value for num1: 100
old   2:     num1 NUMBER := &num1;
new   2:     num1 NUMBER := 100;
Enter value for num2: 50
old   3:     num2 NUMBER := &num2;
new   3:     num2 NUMBER := 50;
Enter value for choice: 2
old  12:     choice := &choice;
new  12:     choice := 2;
1. Addition
2. Subtraction
3. Multiplication
4. Division
Subtraction = 50

PL/SQL procedure successfully completed.




 Celsius to Fahrenheit Conversion Program
SP2-0734: unknown command beginning "Celsius to..." - rest of line ignored.
SQL>
SQL> DECLARE
  2      celsius NUMBER := &celsius;
  3      fahrenheit NUMBER;
  4  BEGIN
  5      fahrenheit := (celsius * 9/5) + 32;
  6
  7      DBMS_OUTPUT.PUT_LINE('Temperature in Fahrenheit = ' || fahrenheit);
  8  END;
  9  /
Enter value for celsius: 100
old   2:     celsius NUMBER := &celsius;
new   2:     celsius NUMBER := 100;
Temperature in Fahrenheit = 212

PL/SQL procedure successfully completed.



        find the sum of nubersfrom 1 to 100
 DECLARE
  2      i NUMBER := 1;
  3      sum_numbers NUMBER := 0;
  4  BEGIN
  5      WHILE i <= 100 LOOP
  6          sum_numbers := sum_numbers + i;
  7          i := i + 1;
  8      END LOOP;
  9
 10      DBMS_OUTPUT.PUT_LINE('Sum of numbers from 1 to 100 = ' || sum_numbers);
 11  END;
 12  /
Sum of numbers from 1 to 100 = 5050

PL/SQL procedure successfully completed.




Find the Factorial of a Number
SP2-0734: unknown command beginning "Find the F..." - rest of line ignored.
SQL> DECLARE
  2      num NUMBER := &num;
  3      fact NUMBER := 1;
  4      i NUMBER := 1;
  5  BEGIN
  6      IF num < 0 THEN
  7          DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative numbers');
  8      ELSE
  9          WHILE i <= num LOOP
 10              fact := fact * i;
 11              i := i + 1;
 12          END LOOP;
 13
 14          DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' = ' || fact);
 15      END IF;
 16  END;
 17  /
Enter value for num: 100
old   2:     num NUMBER := &num;
new   2:     num NUMBER := 100;
Factorial of 100 = ~

PL/SQL procedure successfully completed.





        electicity bill calculation program
 DECLARE
  2      units NUMBER := &units;
  3      bill NUMBER := 0;
  4  BEGIN
  5      IF units <= 100 THEN
  6          bill := units * 1.5;
  7
  8      ELSIF units <= 200 THEN
  9          bill := (100 * 1.5) + (units - 100) * 2;
 10
 11      ELSIF units <= 300 THEN
 12          bill := (100 * 1.5) + (100 * 2) + (units - 200) * 3;
 13
 14      ELSE
 15          bill := (100 * 1.5) + (100 * 2) + (100 * 3) + (units - 300) * 5;
 16      END IF;
 17
 18      DBMS_OUTPUT.PUT_LINE('Electricity Bill = ' || bill);
 19  END;
 20  /
Enter value for units: 300
old   2:     units NUMBER := &units;
new   2:     units NUMBER := 300;
Electricity Bill = 650

PL/SQL procedure successfully completed.
