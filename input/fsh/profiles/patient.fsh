
Profile: NgPatient
Parent: Patient
Title: "NG Patient"
Description: "Nigeria Patient Profile"

* meta.lastUpdated 1..1 MS
* meta.lastUpdated ^short = "The date and time when the client record was created or last updated."

* identifier 1..* MS
* identifier.value 1..1 MS
* identifier.value ^short = "The actual ID value (eg. NIN35635556)"
* identifier.system 1..1 MS
* identifier.system ^short = "The organization website that assign the ID being entered (eg. https://nimc.gov.ng)"
* name 1..* MS
* name.given 1..* 
* name.given ^short = "The other names of the client"
* name.family 1..1
* name.family ^short = "The surname or family name of the client"
// Bind gender to your custom AdministrativeGender value set
* gender from NGGenderVS (required)
* gender ^short = "The sex of the client"
* active 0..1 
* active ^short = "Whether this patient's record is in active use (0-23 mnths is active)"
* birthDate 0..1 MS
* birthDate ^short = "The date of birth of the client in the form dd-mm-yyy"
* deceased[x] 0..1
* deceased[x] ^short = "Indicates if an individual client is alive or dead"
* deceasedBoolean 0..1
* deceasedBoolean ^short = "Indicates if the individual is deceased (dead) or not"
* deceasedDateTime 0..1
* deceasedDateTime ^short = "Indicates when the individual passed away if dead."
* active 0..1
* active ^short = "Indicates Whether this patient's record is in active use or not (eg. for Immunization, this flag can be set to true between 0-24 months, and false there after, to optimize searches)"
* address 0..* MS
* address.line 0..1 
* address.line ^short = "The house number number, stree, and name where the Client lives"
* address.city 0..1  
* address.city ^short = "The city, village, town or settlement where the client lives in the state"
* address.district from NGLGAsVS (required)
* address.district ^short = "The FHIR name is district, used as Nigeria LGA in this profile"
* address.district ^definition = "Full detailed definition for the address district field as Local Government Area"
* address.state from NGStatesVS (required)
* address.state ^short = "The name of the state where the client resides in Nigeria"
* contact 0..* MS
* contact.name.given 0..* 
* contact.name.given ^short = "The first name of the Client's primary Caregiver, can be a Parent or Guardian"
* contact.name.family 0..1 
* contact.name.family ^short = "The surname (family) name of the Client's primary Caregiver, can be a Parent or Guardian"
* contact.telecom 0..* MS
* contact.telecom.system 0..1 
* contact.telecom.system ^short = "The primary means to contact the Client's primary Caregiver or Guardian"
* contact.telecom.value 0..1 
* contact.telecom.value ^short = "The primary means to value(phone no. or email address) the Client's primary Caregiver or Guardian"
* contact.address.line 0..1 MS
* contact.address.line ^short = "The line address of the Client's primary Caregiver or Guardian"
* contact.address.city 0..1
* contact.address.city ^short = "The city, town or settlement where the Client's primary Caregiver or Guardian lives"
* contact.address.district from NGLGAsVS (required)
* contact.address.district ^short = "The LGA where the Client's primary Caregiver or Guardian lives"
* contact.address.state from NGStatesVS (required)
* contact.address.state ^short = "The State in Nigeria where the Client's primary Caregiver or Guardian lives"
* communication 0..*
* communication.language from NGLanguagesVS (extensible)
* communication.language ^short = "Preferred language which can be used to communicate with the patient about his or her health"
* photo 0..* MS
* photo ^short = "Image of the patient"
* photo.data 0..1
* photo.data ^short = "Base64 encoded image data"
* photo.title 0..1
* photo.title ^short = "The label of the image"
* photo.url 0..1
* photo.url ^short = "Public URL or internal endpoint to the patient's photo"
* photo.size 0..1
* photo.size ^short = "The size of the image in mega bytes MB"
* photo.contentType 0..1
* photo.contentType ^short = "Type of image (e.g., image/jpeg)"



// Hide dataelements

* name.use 0..0 
* identifier.use 0..0
* address.use 0..0
* contact.name.use 0..0
* contact.telecom.use 0..0
* contact.address.use 0..0
* implicitRules 0..0
* modifierExtension 0..0
* contact.modifierExtension 0..0
* link.modifierExtension 0..0


Instance: patient-001
InstanceOf: NgPatient
Title: "Example: NG Patient"
Description: "An example instance of a Nigerian patient profile"
Usage: #example

* meta.lastUpdated = "2025-07-30T10:20:00+01:00"
* identifier[0].system = "https://nimc.gov.ng"
* identifier[0].value = "NIN123456789"
* name[0].given[0] = "Chinedu"
* name[0].family = "Okoro"
* gender = #male
* active = true
* birthDate = "1990-06-15"
* address[0].line = "23 Market Road"
* address[0].city = "Nsukka"
* address[0].district = #nsukka
* address[0].state = "Enugu"
* contact[0].name.given[0] = "Ngozi"
* contact[0].name.family = "Okoro"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+2348123456789"
* contact[0].address.line = "23 Market Road"
* contact[0].address.city = "Nsukka"
* contact[0].address.district = #nsukka
* contact[0].address.state = "Enugu"
* communication[0].language.coding[0].system = "urn:ietf:bcp:47"
* communication[0].language.coding[0].code = #ig
* communication[0].language.coding[0].display = "Igbo"
* photo[0].url = "https://example.org/patient-photos/chinedu-okoro.jpg"
* photo[0].title = "Chinedu Okoro profile photo"
* photo[0].contentType = #image/jpeg
* photo[0].size = 245600