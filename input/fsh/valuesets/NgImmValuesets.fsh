//Patient Valuesets
ValueSet: NGGenderVS
Id: nigeria-gender
Title: "NG-Imm Gender or Sex VS"
//Description: "The administrative gender of a person."
Description: "Subset of HL7 administrative-gender limited to 'male' and 'female'."
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-gender"
* include codes from system NGGenderCS 

ValueSet: NGWardsVS
Id: nigeria-wards
Title: "NG-Imm Wards VS"
Description: "The administrative Ward (within an LGA) where a person or a facility is."
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-wards"
* include codes from system NGWardsCS

ValueSet: NGLGAsVS
Id: nigeria-lgas
Title: "NG-Imm LGAs VS"
Description: "The administrative Local Government Areas where a person or a facility is."
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-lgas"
* include codes from system NGLGAsCS

ValueSet: NGStatesVS
Id: nigeria-states
Title: "NG-Imm States VS"
Description: "The state where a person or a facility is."
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-states"
* include codes from system NGStatesCS

ValueSet: NGLanguagesVS
Id: nigeria-languages
Title: "NG-Imm Languages VS"
Description: "The Patient's preferred language for communication."
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-languages"
* include codes from system NGLanguagesCS


//Location & Organisation VS

ValueSet: NGFacilityTypeVS
Id: nigeria-facility-types
Title: "NG-Imm HealthFacility Type VS"
Description: "Classification of Nigerian health facilities"
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-health-facility-types"
* include codes from system NGFacilityTypeCS

ValueSet: NGOrganizationOwnerVS
Id: nigeria-location-owner
Title: "NG-Imm Location Owner"
Description: "The owner of an Immunization location"
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-clinical-status"
* include codes from system NGOrganizationOwnerCS

