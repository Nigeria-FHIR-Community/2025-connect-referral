Profile: NgCommunicationRequest
Parent: CommunicationRequest
Id: ng-communication-request
Title: "NG CommunicationRequest"
Description: "A profile for requesting a communication between healthcare providers, facilities, or clients in support of MNCH or other referral workflows."

* status 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* requester 0..1
* requester only Reference(Practitioner or Organization)
* recipient 1..* MS
* recipient only Reference(Practitioner or Organization or Patient)
* reasonCode 0..*
* authoredOn 0..1
* payload 0..*
* payload.contentString 0..1
* payload.contentReference 0..1
* occurrenceDateTime 0..1


Instance: communicationrequest-001
InstanceOf: NgCommunicationRequest
Title: "Example: ANC Referral CommunicationRequest"
Description: "A communication request from a primary care provider to a secondary facility for a referral follow-up."
Usage: #example

* status = #active
* subject.reference = "NgPatient/patient-mnch-0010"
* requester.reference = "NgPractitioner/practitioner-0120"
* recipient[0].reference = "NgOrganization/secondary-facility"
* reasonCode[0].text = "Referral for management of high-risk pregnancy"
* authoredOn = "2025-08-01"
* payload[0].contentString = "Please receive the patient for further monitoring and specialist care due to hypertension in pregnancy."
* occurrenceDateTime = "2025-08-02T09:00:00+01:00"
