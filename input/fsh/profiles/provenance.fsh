Profile: NgProvenance
Parent: Provenance
Id: ng-provenance
Title: "NG Provenance"
Description: "A profile for capturing metadata about creation or modification of health data in Nigeria, especially for audit and signature purposes."

* target 1..* MS
* recorded 1..1 MS
* agent 1..* MS
* agent.who 1..1 MS
* agent.onBehalfOf 0..1
* agent.type 0..1
* activity 0..1
* location 0..1

Instance: provenance-0011
InstanceOf: NgProvenance
Title: "Example: Provenance of ePrescription"
Description: "An example of provenance capturing the author and timestamp of a prescription."
Usage: #example

* target[0].reference = "NgMedicationRequest/example-medication-request"
* recorded = "2025-08-05T08:45:00+01:00"
* agent[0].who.reference = "Practitioner/practitioner-001"
* agent[0].onBehalfOf.reference = "Organization/org-hospital"
* agent[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* agent[0].type.coding[0].code = #author
* agent[0].type.coding[0].display = "Author"
* activity.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-DataOperation"
* activity.coding[0].code = #CREATE
* activity.coding[0].display = "create"
* location.reference = "NgLocation/example-location"