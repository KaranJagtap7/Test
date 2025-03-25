const cds = require('@sap/cds')

module.exports = cds.service.impl(function () {



    this.on('fun_CreateEmployee', async (req) => {
        try {
            console.log("Request Data:", req.data); // Log the request data 

            var data = JSON.parse(req.data.oPayload)
            const { Employee } = this.entities

            //Check for undefined or invalid values 
            if (!data.EMPID || !data.EMPNM || !data.EMPAG || !data.CITY) {
                throw new Error('Missing required fields (Employee id, Name, Age and City).');
            }

            let dbQuery = `Call "CreateEmployee"("EMPID" => '${data.EMPID}', "EMPNM" => '${data.EMPNM}', "EMPAG" => ${data.EMPAG}, "CITY" => '${data.CITY}' )`;
            let result = await cds.run(dbQuery)

            console.log(result)

            return await SELECT.from(Employee)

        } catch (error) {

            console.error(error)
            return error.toString()
        }
    })

}) 