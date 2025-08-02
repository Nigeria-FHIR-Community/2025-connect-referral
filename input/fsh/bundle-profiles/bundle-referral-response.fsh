Profile: NgBundleReferralResponse
Parent: Bundle
Id: ng-bundle-referral-response
Title: "3-NG-Bundle: Referral Response"
Description: "Bundle used to respond to a referral, indicating acceptance, triage, feedback, or action taken."

* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    communication 1..1 and
    carePlan 0..1 and
    condition 0..* and
    observation 0..* and
    procedure 0..* and
    encounter 0..1 and
    practitioner 0..1 and
    organization 1..1

* entry[patient].resource only NgPatient
* entry[communication].resource only NgCommunication
* entry[carePlan].resource only CarePlan
* entry[condition].resource only Condition
* entry[observation].resource only Observation
* entry[procedure].resource only Procedure
* entry[encounter].resource only NgEncounter
* entry[practitioner].resource only NgPractitioner
* entry[organization].resource only NgOrganization


Instance: referral-response-bundle-001
InstanceOf: NgBundleReferralResponse
Title: "Example: Referral Response Bundle"
Description: "Bundle example showing a referral response with communication and follow-up details."
Usage: #example

* type = #collection

* entry[0].fullUrl = "urn:uuid:patient-001"
* entry[0].resource = patient-001

* entry[1].fullUrl = "urn:uuid:communication-001"
* entry[1].resource = communication-001

* entry[2].fullUrl = "urn:uuid:careplan-001"
* entry[2].resource = carePlan-001

* entry[3].fullUrl = "urn:uuid:condition-0018"
* entry[3].resource = condition-001

* entry[4].fullUrl = "urn:uuid:observation-0018"
* entry[4].resource = observation-001

* entry[6].fullUrl = "urn:uuid:encounter-001"
* entry[6].resource = encounter-001

* entry[7].fullUrl = "urn:uuid:practitioner-001"
* entry[7].resource = practitioner-001

* entry[8].fullUrl = "urn:uuid:organization-001"
* entry[8].resource = organization-001
