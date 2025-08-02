Profile: NgLocation
Parent: Location
Id: ng-location
Title: "NG Location"
Description: "A profile representing facility locations such as clinics, wards, or service points in Nigeria."

* status 1..1 MS
* name 1..1 MS
* description 0..1
* mode 1..1
* type 0..*
* telecom 0..*
* address 1..1 MS
* managingOrganization 0..1
* physicalType 0..1

Instance: example-location
InstanceOf: NgLocation
Title: "Example: Clinics Location"
Description: "An example location representing a clinic branch."
Usage: #example

* status = #active
* name = "Gwagwalada Community clinic"
* description = "Primary community clinic branch serving Gwagwalada area"
* mode = #instance
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type[0].coding[0].code = #PHARM
* type[0].coding[0].display = #clinic
* address.line[0] = "Plot 10 Zuba Road"
* address.city = "Gwagwalada"
* address.district = #gwagwalada
* address.state = #FCT
* address.country = #NG