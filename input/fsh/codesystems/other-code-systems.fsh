CodeSystem: NGFacilityTypeCS
Id: nigeria-facility-type
Title: "NG-Imm Facility Type CS"
Description: "A standardized classification system used to describe the type or level of health facility within a healthcare delivery system, based on the scope of services provided, staffing, infrastructure, and administrative role."
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-facility-typeCS"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Grouping different Facility types
* #outreach-post	"Outreach Post" "A temporary or mobile health service site established to deliver essential healthcare to underserved or remote populations."
* #phc-center-l1	"PHC Center Level 1" "A basic primary healthcare facility providing preventive and promotive services, often staffed by community health workers."
* #phc-center-l2    "PHC Center Level 2" "A primary healthcare facility with limited diagnostic and treatment services, typically staffed by nurses, CHEWs, or junior medical personnel."
* #phc-center-l3    "PHC Center Level 3" "An advanced primary healthcare facility offering comprehensive outpatient care, minor/light procedures, and referral support, often with a resident medical officer."
* #hospital	"Secondary Hospital" "A referral facility providing specialized care, inpatient services, and emergency response, staffed by medical officers and specialists."
* #tertiary	"Tertiary Facility" "A highly specialized hospital offering advanced diagnostic, therapeutic, and surgical care, often affiliated with teaching or research institutions."

CodeSystem: NGGenderCS
Id: nigeria-gender
Title: "NG-Imm Gender CS"
Description: "The administrative gender of a person."
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-genderCS"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Gender/sex of a client
* #male "male" "Client is of the male gender"
* #female "female" "Client is of the female gender"