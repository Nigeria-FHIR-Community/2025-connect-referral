Profile: NgEncounter
Parent: Encounter
Id: ng-prescription-encounter
Title: "NG Encounter"
Description: "A profile representing patient encounters related to Referral."

* status 1..1 MS
* class 1..1 MS
* subject 1..1 MS
* period 0..1
* reasonCode 0..* MS
* serviceProvider 0..1



Instance: encounter-001
InstanceOf: NgEncounter
Title: "Example: Referral Encounter"
Description: "An example encounter related to an referral event."
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject.reference = "Patient/patient-001"
* period.start = "2025-08-04T09:00:00+01:00"
* period.end = "2025-08-04T09:20:00+01:00"
* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #65363002
* reasonCode[0].coding[0].display = "Otitis media"
* serviceProvider.reference = "NgOrganization/org-hospital"