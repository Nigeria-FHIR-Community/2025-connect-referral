Profile: NgCarePlan
Parent: CarePlan
Id: ng-referral-careplan
Title: "NG Referral CarePlan"
Description: "A profile for representing care plans related to MNCH referrals and maternal-child continuity of care."

* status 1..1 MS
* intent 1..1 MS
* subject 1..1 MS
* subject only Reference(NgPatient)
* period 0..1
* created 0..1
* author 0..1
* author only Reference(NgPractitioner or NgOrganization)
* category 0..*
* title 0..1
* description 0..1 MS
* goal 0..*
* activity 0..*
* activity.detail.kind 0..1
* activity.detail.status 1..1
* activity.detail.description 0..1


// Examples

Instance: carePlan-001
InstanceOf: NgCarePlan
Title: "Example: ANC Referral Care Plan"
Description: "Example care plan for a pregnant woman referred to secondary facility for advanced ANC services."
Usage: #example

* status = #active
* intent = #plan
* subject.reference = "NgPatient/patient-mnch-001"
* period.start = "2025-08-01"
* period.end = "2025-09-15"
* created = "2025-08-01"
* author.reference = "NgPractitioner/practitioner-012"
* category[0].coding[0].system = "http://hl7.org/fhir/care-plan-category"
* category[0].coding[0].code = #assess-plan
* title = "Referral for High-Risk ANC Monitoring"
* description = "This care plan outlines scheduled follow-up and tests for a patient referred due to elevated blood pressure and proteinuria."

* goal[0].reference = "Goal/anc-bp-goal"

* activity[0].detail.kind = #Appointment
* activity[0].detail.status = #scheduled
* activity[0].detail.description = "Follow-up appointment with obstetrician at secondary facility on 2025-08-05"

* activity[1].detail.kind = #ServiceRequest
* activity[1].detail.status = #not-started
* activity[1].detail.description = "Request for renal function test and repeat urine protein analysis"
