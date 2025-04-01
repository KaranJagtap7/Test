using { DELTA.DB as db } from '../db/schema';

service MyService {


    // Get service
    entity Employee as projection on db.Employee12;
// 
    // entity INC_M_BDNTR as projection on db.INC_M_BDNTR;

    entity EmployeeDataView as projection on db.TESTVIEW;
}