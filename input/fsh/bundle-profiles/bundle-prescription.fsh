Profile: NgPrescriptionBundle
Parent: Bundle
Id: ng-prescription-bundle
Title: "3-NG Bundle Prescription"
Description: "A FHIR bundle for sharing an electronic prescription between a prescriber and a pharmacy."

* meta.lastUpdated 0..1 MS
* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    medicationRequest 1..1 and
    practitioner 1..1 and
    encounter 0..1 and
    condition 0..* and
    medication 0..* and
    organization 1..1 and
    provenance 0..1

* entry[patient].resource only NgPatient
* entry[medicationRequest].resource only NgMedicationRequest
* entry[practitioner].resource only NgPractitioner
* entry[encounter].resource only NgEncounter
* entry[condition].resource only NgCondition
* entry[medication].resource only NgMedication
* entry[organization].resource only NgOrganization
* entry[provenance].resource only NgProvenance

Instance: example-prescription-bundle
InstanceOf: NgPrescriptionBundle
Title: "Example: Prescription Bundle"
Description: "An example bundle for electronic prescription from prescriber to pharmacy."
Usage: #example

* type = #collection
* timestamp = "2025-08-06T08:30:00+01:00"

* entry[0].fullUrl = "urn:uuid:patient-001"
* entry[0].resource = patient-001

* entry[1].fullUrl = "urn:uuid:medicationrequest-001"
* entry[1].resource = medicationrequest-001

* entry[2].fullUrl = "urn:uuid:practitioner-001"
* entry[2].resource = practitioner-001

* entry[3].fullUrl = "urn:uuid:organization-001"
* entry[3].resource = organization-001

* entry[4].fullUrl = "urn:uuid:medication-001"
* entry[4].resource = medication-001

* entry[5].fullUrl = "urn:uuid:condition-001"
* entry[5].resource = condition-001

* entry[6].fullUrl = "urn:uuid:encounter-001"
* entry[6].resource = encounter-001

* entry[7].fullUrl = "urn:uuid:provenance-001"
* entry[7].resource = provenance-001