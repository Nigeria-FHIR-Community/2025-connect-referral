Profile: NgBundleReferralTracking
Parent: Bundle
Id: ng-bundle-referral-tracking
Title: "4-NG-Bundle: Referral Tracking"
Description: "Bundle for tracking referral progression, including each encounter, communication, and outcomes related to the referral."

* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    serviceRequest 1..1 and
    communication 0..* and
    carePlan 0..* and
    condition 0..* and
    observation 0..* and
    procedure 0..* and
    encounter 0..* and
    organization 1..1 and
    practitioner 0..1

* entry[patient].resource only NgPatient
* entry[serviceRequest].resource only ServiceRequest
* entry[communication].resource only Communication
* entry[carePlan].resource only CarePlan
* entry[condition].resource only Condition
* entry[observation].resource only Observation
* entry[procedure].resource only Procedure
* entry[encounter].resource only NgEncounter
* entry[organization].resource only NgOrganization
* entry[practitioner].resource only NgPractitioner



Instance: referral-tracking-bundle-001
InstanceOf: NgBundleReferralTracking
Title: "Example: Referral Tracking Bundle"
Description: "Example bundle capturing a longitudinal view of MNCH referral tracking."
Usage: #example

* type = #collection

* entry[0].fullUrl = "urn:uuid:patient-001"
* entry[0].resource = patient-001

* entry[1].fullUrl = "urn:uuid:servicerequest-001"
* entry[1].resource = servicerequest-001

* entry[2].fullUrl = "urn:uuid:communication-001"
* entry[2].resource = communication-001

* entry[3].fullUrl = "urn:uuid:careplan-001"
* entry[3].resource = carePlan-001

* entry[4].fullUrl = "urn:uuid:condition-001"
* entry[4].resource = condition-001

* entry[5].fullUrl = "urn:uuid:observation-001"
* entry[5].resource = observation-001

* entry[7].fullUrl = "urn:uuid:encounter-001"
* entry[7].resource = encounter-001

* entry[8].fullUrl = "urn:uuid:organization-001"
* entry[8].resource = organization-001

* entry[9].fullUrl = "urn:uuid:practitioner-001"
* entry[9].resource = practitioner-001
