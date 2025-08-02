Profile: NgAuditEvent
Parent: AuditEvent
Id: ng-audit-event
Title: "NG AuditEvent"
Description: "A profile for logging access and interactions with health data in Nigeria, such as patient records."

* type 1..1 MS
* subtype 0..*
* action 0..1 MS
* recorded 1..1 MS
* outcome 0..1 MS
* agent 1..* MS
* agent.who 1..1 MS
* agent.requestor 1..1 MS
* source 1..1 MS
* entity 0..*

Instance: audit-001
InstanceOf: NgAuditEvent
Title: "Example: AuditEvent for Prescription Access"
Description: "An example AuditEvent recording a practitioner viewing an encounter."
Usage: #example

* type.system = "http://terminology.hl7.org/CodeSystem/audit-event-type"
* type.code = #rest
* type.display = "RESTful Operation"
* subtype[0].system = "http://hl7.org/fhir/restful-interaction"
* subtype[0].code = #read
* subtype[0].display = "read"
* action = #R
* recorded = "2025-08-05T09:15:00+01:00"
* outcome = #0
* agent[0].who.reference = "Practitioner/practitioner-001"
* agent[0].requestor = true
* source.site = "Hospital EMR"
* source.observer.reference = "Organization/org-hospital"
* entity[0].what.reference = "MedicationRequest/example-medication-request"
* entity[0].type.code = #2
* entity[0].type.display = "System Object"