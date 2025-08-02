
Profile: NgPractitioner
Parent: Practitioner
Title: "NG Practitioner"
Description: "Profile for a Nigerian Practitioner" 
* identifier 0..* MS
* identifier.system 1..1
* identifier.system ^short = "The namespace for the identifier value e.g a MDCN URL"
* identifier.value 1..1
* identifier.value ^short = "The value that is unique from the identity provider"
* active 0..1
* active ^short = "A boolean indicating that this practitioner is active"
* name MS
* name.given 1..1
* name.given ^short = "The first name of the practitioner e.g. of the Midwife"
* name.family 1..1
* name.given ^short = "The surname of the practitioner e.g. of the Physician"
* telecom 0..* MS
* telecom.system 1..1 
* telecom.system ^short = "The preferred communication medium e.g. email | mobile"
* telecom.value 1..1 
* telecom.system ^short = "The contact communication information e.g. nkiru@test.com | 08092299999"
* birthDate MS 
* birthDate ^short = "The date of birth of the healthcare professional"
* qualification.issuer only Reference(NgOrganization)
* qualification.issuer ^short = "The regulating organization that issue the qualification"
* qualification.period 0..1
* qualification.period ^short = "The time duration this qualification is valid"
* qualification.code.text 0..1
* qualification.code.text ^short = "The public certificate number"


// Hide dataelements

* name.use 0..0 


Instance: practitioner-001
InstanceOf: NgPractitioner
Title: "Example: NG Practitioner"
Description: "An example of a Nigerian healthcare practitioner."
Usage: #example

* identifier[0].system = "https://mdcn.gov.ng"
* identifier[0].value = "MDCN-457812"
* active = true
* name.given = "Chinelo"
* name.family = "Okoye"
* telecom[0].system = #phone
* telecom[0].value = "08011223344"
* birthDate = "1982-03-10"
* qualification[0].code.text = "MEDCERT-2023"
* qualification[0].issuer.reference = "Organization/organization-001"
* qualification[0].period.start = "2023-01-01"
* qualification[0].period.end = "2028-12-31"