namespace Product1.db; 

entity Employee{ 
    key EMPID:Integer; 
        EMPNM:String(100); 
        EMPPH:Integer; 
        CITY:String(20); 
} 

@cds.persistence.exists
entity INC_M_BDNTR{ 
    key PRIKY:Integer;
        ISDEL:String(1);
        CRTBY:String(30);
        CRTDT:Date;
        CRTTM:Time;

} 

view emp_view as select from Employee{
        Employee.EMPID,
        Employee.EMPNM,
        Employee.EMPPH,
        Case when EMPID = 777 THEN 1 ELSE 0 END AS TEMP 
} WHERE Employee.EMPID = 777;

// @cds.persistence.exists
// entity Employee_v{ 
//     key EMPID:Integer; 
//         EMPNM:String(100); 
//         EMPPH:Integer; 
//         CITY:String(20); 
// } 
context Product1.db {
        type EMPID : Integer;
        type EMPNM : String(100);
        type EMPPH :Integer;
        type CITY  :String(20);
}

// @cds.persistence.exists 
// @cds.persistence.calcview 
// entity Employee_v {
// key     EMPID: Integer  @title: 'EMPID: EMPID' ; 
//      EMPNM: String(100)  @title: 'EMPNM: EMPNM' ; 
//      EMPPH: Integer  @title: 'EMPPH: EMPPH' ; 
//      CITY: String(20)  @title: 'CITY: CITY' ; 
// }

// MYSERVICE_EMPLOYEE_VIEW

// entity test12 as table "D376A7747F8F4A88A32945A505D92F99"."INC_M_BDNTR";
