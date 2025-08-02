Profile: NgCoverageEnquiryBundle
Parent: Bundle
Id: ng-coverage-enquiry-bundle
Title: "1-NG Bundle Coverage Enquiry"
Description: "A FHIR bundle used by a patient or provider to inquire about health insurance coverage from a payer or insurer."

* meta.lastUpdated 0..1 MS
* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    coverageEligibilityRequest 1..1 and
    patient 1..1 and
    coverage 1..1 and
    organization 1..1 and
    practitioner 0..1 and
    coverageEligibilityResponse 0..1

* entry[coverageEligibilityRequest].resource only NgCoverageEligibilityRequest
//* entry[coverageEligibilityResponse].resource only NgCoverageEligibilityResponse
* entry[coverage].resource only NgClaimCoverage
* entry[patient].resource only NgPatient
* entry[organization].resource only NgOrganization
* entry[practitioner].resource only NgPractitioner

Instance: example-coverage-enquiry-bundle
InstanceOf: NgCoverageEnquiryBundle
Title: "Example: Coverage Enquiry Bundle"
Description: "An example bundle for checking a patient's insurance coverage status."
Usage: #example

* type = #collection
* timestamp = "2025-08-06T13:00:00+01:00"

* entry[0].fullUrl = "urn:uuid:eligibility-request-001"
* entry[0].resource = eligibility-request-001

* entry[1].fullUrl = "urn:uuid:patient-001"
* entry[1].resource = patient-001

* entry[2].fullUrl = "urn:uuid:coverage-001"
* entry[2].resource = coverage-001

* entry[3].fullUrl = "urn:uuid:organization-001"
* entry[3].resource = organization-001

* entry[4].fullUrl = "urn:uuid:practitioner-001"
* entry[4].resource = practitioner-001

//* entry[5].fullUrl = "urn:uuid:eligibility-response-001"
//* entry[5].resource = eligibility-response-001