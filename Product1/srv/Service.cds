using { Product1.db as db }  from '../db/Schema'; 

service MyService { 

   // post service 
//    action fun_fun_CreateEmployee(oPayload:String) returns String; 

    // Get service 
    entity Employee as projection on db.Employee; 

} 