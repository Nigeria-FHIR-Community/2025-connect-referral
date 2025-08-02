Profile: NgServiceRequest
Parent: ServiceRequest
Id: ng-servicerequest
Title: "NG ServiceRequest"
Description: "A simplified profile representing a service request such as a referral or lab request."

* status 1..1 MS
* intent 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* authoredOn 0..1
* requester 0..1
* encounter 0..1
* reasonCode 0..* MS
* supportingInfo 0..*


Instance: servicerequest-001
InstanceOf: NgServiceRequest
Title: "Example: ANC Referral ServiceRequest"
Description: "A service request for ANC referral to a higher-level facility."
Usage: #example

* status = #active
* intent = #order
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #734163000
* code.coding[0].display = "Referral to obstetrician"
* subject.reference = "Patient/patient-001"
* authoredOn = "2025-08-01"
* requester.reference = "Practitioner/practitioner-001"
* encounter.reference = "Encounter/encounter-001"
* reasonCode[0].text = "High blood pressure in pregnancy"
* supportingInfo[0].reference = "Observation/observation-001"
