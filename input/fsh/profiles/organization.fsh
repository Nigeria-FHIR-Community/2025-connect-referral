Profile: NgOrganization
Parent: Organization
Id: ng-imm-organization 
Title: "NG Organization"
Description: "An organization profile representing healthcare facilities responsible for health services or other types of organizations."


* identifier 1..* MS
* identifier.system 1..1
* identifier.system ^short = "The facility type regulator or identifity provider if not health facility (E.g. Luth in Lagos State)"
* identifier.value 1..1
* identifier.value ^short = "The facility or organization uniqe identifier"
* active 0..1 MS
* active ^short = "Boolean to indicate if institution is active or inactive"
* name 1..1 MS
* name ^short = "The name of the organization or health facility"
* type 1..*
* type from NGFacilityTypeVS (required)
* type ^short = "The type of the organization or health facility"
* telecom 0..*
* telecom.system 1..1
* telecom.system ^short = "The organization type of contact detail"
* telecom.value 1..1
* telecom.value ^short = "The organization contact detail"
* partOf only Reference(NgOrganization)
* partOf ^short = "The Organization which this organization forms a part"

* address 1..* MS
* address.line 1..*
* address.line ^short = "The organization contact address line"
* address.city 1..1
* address.city ^short = "The organization contact address city, town or settlement"
* address.district from NGLGAsVS
* address.district ^short = "The organization contact address LGA"
* address.state from NGStatesVS
* address.state ^short = "The organization contact address state"


// Hide these
* telecom.use 0..0




Instance: organization-001
InstanceOf: NgOrganization
Title: "Example: NG Organization"
Description: "An example of a healthcare facility organization."
Usage: #example

* identifier[0].system = "https://herfama.lagos.ng"
* identifier[0].value = "HF-0001"
* active = true
* name = "Sunlight Medical Center"
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #prov
* type[0].coding[0].display = "Healthcare Provider"
* telecom[0].system = #phone
* telecom[0].value = "+2348012345678"
* address[0].line[0] = "12 Ikoyi Crescent"
* address[0].city = "Lagos"
* address[0].district = #ikeja
* address[0].state = "Lagos"