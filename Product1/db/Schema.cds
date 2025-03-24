namespace Product1.db; 

entity Employee{ 
    key EMPID:Integer; 
        EMPNM:String(100); 
        EMPPH:Integer; 
        CITY:String(20); 
} 

view emp_view as select from Employee{
        Employee.EMPID,
        Employee.EMPNM,
        Employee.EMPPH,
        Case when EMPID = 1 THEN 1 ELSE 0 END AS TEMP,
        WHERE EMP.EMPID = 2
}