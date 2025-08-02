Profile: NgDispenseNotificationBundle
Parent: Bundle
Id: ng-dispense-notification-bundle
Title: "2-NG Bundle Dispense Notification"
Description: "A FHIR bundle used by a pharmacy to notify the prescriber or health authority of a medication dispense event."

* meta.lastUpdated 0..1 MS
* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    medicationDispense 1..1 and
    medicationRequest 0..1 and
    medication 0..1 and
    patient 1..1 and
    practitioner 1..1 and
    organization 1..1 and
    provenance 0..1 and
    auditEvent 0..1

* entry[medicationDispense].resource only NgMedicationDispense
* entry[medicationRequest].resource only NgMedicationRequest
* entry[medication].resource only NgMedication
* entry[patient].resource only NgPatient
* entry[practitioner].resource only NgPractitioner
* entry[organization].resource only NgOrganization
* entry[provenance].resource only NgProvenance
* entry[auditEvent].resource only NgAuditEvent

Instance: example-dispense-notification
InstanceOf: NgDispenseNotificationBundle
Title: "Example: Dispense Notification"
Description: "An example bundle showing a pharmacy notifying a prescriber about a medication dispense event."
Usage: #example

* type = #collection
* timestamp = "2025-08-06T10:45:00+01:00"

* entry[0].fullUrl = "urn:uuid:dispense-001"
* entry[0].resource = dispense-001

* entry[1].fullUrl = "urn:uuid:patient-001"
* entry[1].resource = patient-001

* entry[2].fullUrl = "urn:uuid:practitioner-001"
* entry[2].resource = practitioner-001

* entry[3].fullUrl = "urn:uuid:organization-001"
* entry[3].resource = organization-001

* entry[4].fullUrl = "urn:uuid:medicationrequest-001"
* entry[4].resource = medicationrequest-001

* entry[5].fullUrl = "urn:uuid:medication-001"
* entry[5].resource = medication-001

* entry[6].fullUrl = "urn:uuid:provenance-001"
* entry[6].resource = provenance-001

* entry[7].fullUrl = "urn:uuid:audit-001"
* entry[7].resource = audit-001