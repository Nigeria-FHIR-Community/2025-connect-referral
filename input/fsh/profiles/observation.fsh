Profile: NgReferralObservation
Parent: Observation
Id: ng-referral-observation
Title: "NG Referral Observation"
Description: "An Observation profile used during MNCH referral workflows for capturing vitals and key clinical signs."

* status 1..1 MS
* category 1..* MS
* category ^short = "The category of the observation (e.g., vital-signs, lab)"
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(NgPatient)
* effective[x] 0..1
* value[x] 0..1 MS
* performer 0..* 
* performer only Reference(NgPractitioner or NgOrganization)
* interpretation 0..1
* note 0..*

* method 0..1
* bodySite 0..1
* referenceRange 0..*



// Example
Instance: observation-001
InstanceOf: NgReferralObservation
Title: "Example: Blood Pressure Observation during MNCH Referral"
Description: "Example observation of systolic and diastolic blood pressure for a patient referred during ANC visit."
Usage: #example

* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #vital-signs
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #85354-9
* code.coding[0].display = "Blood pressure panel with all children optional"
* subject.reference = "NgPatient/patient-mnch-001"
* effectiveDateTime = "2025-08-02T09:30:00+01:00"
* valueQuantity.value = 125
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* performer[0].reference = "Practitioner/practitioner-012"
* interpretation.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding[0].code = #H
* interpretation.coding[0].display = "High"
* note[0].text = "Elevated BP noted. Referral to hospital initiated."
