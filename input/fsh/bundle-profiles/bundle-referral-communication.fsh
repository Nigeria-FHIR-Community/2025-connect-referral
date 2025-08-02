Profile: NgBundleReferralCommunication
Parent: Bundle
Id: ng-bundle-referral-communication
Title: "1-NG-Bundle: Referral Communication"
Description: "Bundle used for ongoing communication between referral parties, including updates, clarifications, and instructions regarding a referral."

* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    communication 1..* and
    organization 1..2 and
    practitioner 0..1 and
    encounter 0..1 and
    condition 0..* and
    observation 0..*
    
* entry[patient].resource only NgPatient
* entry[communication].resource only NgCommunication
* entry[organization].resource only NgOrganization
* entry[practitioner].resource only NgPractitioner
* entry[encounter].resource only NgEncounter
* entry[condition].resource only Condition
* entry[observation].resource only Observation


Instance: referral-communication-bundle-001
InstanceOf: NgBundleReferralCommunication
Title: "Example: Referral Communication Bundle"
Description: "Bundle carrying communication between referring and receiving provider during the referral process."
Usage: #example

* type = #collection

* entry[0].fullUrl = "urn:uuid:patient-001"
* entry[0].resource = patient-001

* entry[1].fullUrl = "urn:uuid:communication-001"
* entry[1].resource = communication-001

* entry[2].fullUrl = "urn:uuid:organization-sender"
* entry[2].resource = organization-sender

* entry[3].fullUrl = "urn:uuid:organization-receiver"
* entry[3].resource = organization-receiver

* entry[4].fullUrl = "urn:uuid:practitioner-001"
* entry[4].resource = practitioner-001

* entry[5].fullUrl = "urn:uuid:encounter-001"
* entry[5].resource = encounter-001

* entry[6].fullUrl = "urn:uuid:condition-001"
* entry[6].resource = condition-001

* entry[7].fullUrl = "urn:uuid:observation-001"
* entry[7].resource = observation-001
