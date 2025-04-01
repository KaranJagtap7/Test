const cds = require('@sap/cds')

module.exports = cds.service.impl(function () {



    this.on('fun_CreateEmployee', async (req) => {
        try {
            console.log("Request Data:", req.data); // Log the request data 
               
            tx = cds.transaction(req);

            var data = JSON.parse(req.data.oPayload)
            const { Employee } = this.entities

            //Check for undefined or invalid values 
            if (!data.EMPID || !data.EMPNM || !data.EMPPH || !data.CITY) {
                throw new Error('Missing required fields (Employee id, Name, Phone no and City).');
            }

            let result = await tx.run('Call "CreateEmployee"(?,?,?,?)',[data.EMPID,data.EMPNM,data.EMPPH,data.CITY])

            console.log(result)

            return await SELECT.from(Employee)

        } catch (error) {

            console.error(error)
            return error.toString()
        }
    })

}) 