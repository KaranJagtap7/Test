namespace DELTA.DB;

entity Employee12{
    key EMPID:Integer;
        EMPNM:String(100);
        PHONE:Integer;
        CITY:String(20);
}

// @Schema: 'DELTA'
// @cds.persistence.exists
// @cds.persistence.table: 'DELTA.INC_M_BDNTR'
// entity INC_M_BDNTR{
//     key PRIKY:Integer;
//         ISDEL:String(1);
//         CRTBY:String(30);
//         CRTDT:Date;
//         CRTTM:Time;
// }

@cds.persistence.exists
@cds.persistence.calcview
entity TESTVIEW {
    key EMPID:Integer;
        NAME1:String(10);
}