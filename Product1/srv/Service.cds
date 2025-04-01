using { Product1.db as db }  from '../db/Schema'; 
// using Employee_v from '../db/Schema';
using Product1.db as test;

service MyService { 

   // post service 
   function fun_CreateEmployee(oPayload:String) returns String; 

    // Get service 
    entity Employee as projection on db.Employee; 

    // entity Employee_v as projection on db.Employee_v;

    entity INC_M_BDNTR as projection on test.INC_M_BDNTR;
} 