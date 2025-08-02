Profile: NgBundleReferralInitiation
Parent: Bundle
Id: ng-bundle-referral-initiation
Title: "2-NG-Bundle: Referral Initiation"
Description: "A bundle used to initiate a referral from one healthcare provider or facility to another, including patient, encounter, reason, communication request, and care plan."

* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    encounter 1..1 and
    communicationRequest 1..1 and
    carePlan 0..1 and
    organization 1..1 and
    practitioner 0..1 and
    condition 0..* and
    observation 0..*

* entry[patient].resource only NgPatient
* entry[encounter].resource only NgEncounter
* entry[communicationRequest].resource only NgCommunicationRequest
* entry[carePlan].resource only NgCarePlan
* entry[organization].resource only NgOrganization
* entry[practitioner].resource only NgPractitioner
* entry[condition].resource only Condition
* entry[observation].resource only Observation


Instance: referral-initiation-bundle-001
InstanceOf: NgBundleReferralInitiation
Title: "Example: Referral Initiation Bundle"
Description: "Bundle to initiate a referral for a high-risk ANC case from PHC to General Hospital."
Usage: #example

* type = #collection

* entry[0].fullUrl = "urn:uuid:patient-001"
* entry[0].resource = patient-001

* entry[1].fullUrl = "urn:uuid:encounter-001"
* entry[1].resource = encounter-001

* entry[2].fullUrl = "urn:uuid:communicationRequest-001"
* entry[2].resource = communicationrequest-001

* entry[3].fullUrl = "urn:uuid:carePlan-001"
* entry[3].resource = carePlan-001

* entry[4].fullUrl = "urn:uuid:organization-phc"
* entry[4].resource = organization-receiver

* entry[5].fullUrl = "urn:uuid:practitioner-001"
* entry[5].resource = practitioner-001

* entry[6].fullUrl = "urn:uuid:condition-001"
* entry[6].resource = condition-001

* entry[7].fullUrl = "urn:uuid:observation-001"
* entry[7].resource = observation-001
