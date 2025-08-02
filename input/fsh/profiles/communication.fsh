Profile: NgCommunication
Parent: Communication
Id: ng-communication
Title: "NG Communication"
Description: "A profile for recording formal communication exchanges such as notifications, clarifications, or feedback in health service delivery."

* status 1..1 MS
* subject 1..1 MS
* recipient 1..1 MS
* sender 0..1
* sent 0..1
* received 0..1
* medium 0..*
* payload 0..* MS

Instance: example-communication
InstanceOf: NgCommunication
Title: "Example: Communication from Pharmacy to Prescriber"
Description: "An example communication sent from a pharmacist to a doctor requesting clarification on a prescription."
Usage: #example

* status = #completed
* subject.reference = "NgPatient/patient-001"
* recipient[0].reference = "Practitioner/practitioner-001"
* sender.reference = "NgPractitioner/pharmacist-001"
* sent = "2025-08-05T11:00:00+01:00"
* received = "2025-08-05T11:03:00+01:00"
* medium[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode"
* medium[0].coding[0].code = #WRITTEN
* medium[0].coding[0].display = "written"
* payload[0].contentString = "Kindly confirm dosage frequency for Amoxicillin prescription before dispensing."