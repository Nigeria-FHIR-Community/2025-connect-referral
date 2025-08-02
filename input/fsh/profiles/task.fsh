Profile: NgTask
Parent: Task
Id: ng-claim-task
Title: "NG Task"
Description: "A profile for workflow and task management in ePrescription processing."

* status 1..1 MS
* intent 1..1 MS
* code 0..1 MS
* for 0..1
* requester 1..1 MS
* owner 0..1
* executionPeriod 0..1
* description 0..1



Instance: example-claim-task
InstanceOf: NgTask
Title: "Example: Task for Dispensing Prescription"
Description: "A task representing the assignment to dispense a prescription in an ePrescription workflow."
Usage: #example

* status = #requested
* intent = #order
* code.text = "Dispense prescribed medication"
* for.reference = "MedicationRequest/example-medication-request"
* requester.reference = "Organization/org-hospital"
* owner.reference = "Practitioner/pharmacist-001"
* executionPeriod.start = "2025-08-05T09:30:00+01:00"
* description = "Pharmacist to dispense Amoxicillin 250mg for 7 days as prescribed"