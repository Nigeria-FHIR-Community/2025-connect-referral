
### Supported Search Parameters for 2025 Connectathon ePrescription Profile

This page outlines the supported FHIR Search Parameters for the [**NgPatient**](StructureDefinition-NgPatient.html) and [**NGPrescriptionBundle**](StructureDefinition-ng-bundle-hmo-to-hospital.html) profiles in the Nigeria  Implementation Guide. These parameters enable efficient querying of patient records in systems that implement this guide.



---

#### List of Supported Search Parameters for [**NgPatient**](StructureDefinition-NgPatient.html) profile

| **Name**        | **Type** | **FHIR Path**            | **Description**                                                                 |
|----------------|----------|--------------------------|---------------------------------------------------------------------------------|
| `identifier`   | `token`  | `Patient.identifier`     | Search by patient’s unique identifier such as NIN or program ID.              |
| `firstname`         | `string` | `Patient.firstname`       | Search by patient’s given name.                                      |
| `lastname`         | `string` | `Patient.lastname`       | Search by patient’s family name.                                      |
| `birthdate`    | `date`   | `Patient.birthDate`      | Filter patients by date of birth. Format: YYYY-MM-DD.                          |
| `createdate`    | `createdate`   | `Patient.createDate`      | Filter patients by date of record creation. Format: YYYY-MM-DD.        |
| `email` | `string` | `Patient.telecom` | Search by all telecome options (email or phone). |
| `gender`       | `token`  | `Patient.gender`         | Filter patients by sex (Male, Female). Bound to [**NGGenderVS**](ValueSet-nigeria-gender.html).                  |
| `address-state`| `string` | `Patient.address.state`  | Search by the state of residence. Bound to [**NGStatesVS**](ValueSet-nigeria-states.html).                       |
| `address-lgas` | `string` | `Patient.address.district` | Search by Local Government Area (LGA). Bound to [**NGLGAsVS**](ValueSet-nigeria-lgas.html). |


---

#### Examples of Use

##### 1. Search by Patient Identifier
```markdown
GET [base]/Patient?identifier=NIN35635556
```

##### 2. Search by FiName
```markdoown
GET [base]/Patient?name=Chukwu
```

##### 3. Search by Date of Birth
```markdown
GET [base]/Patient?birthdate=2022-07-15
```

##### 4. Search by State of Residence (including ascending and descending order sorting)
```markdown
GET [base]/Patient?address-state=Benue
```

```markdown
GET [base]/Patient?address-state=Benue&_sort=createddate
```

```markdown
GET [base]/Patient?address-state=Benue&_sort=-createddate
```


##### 5. Search by State of creation date or last updated (range supported)
```markdown
GET [base]/Patient?createddate=ge2024-01-01&createddate=le2024-12-31
```

---



#### Supported Search Parameters on [**NGPrescriptionBundle**](StructureDefinition-ng-bundle-hmo-to-hospital.html) Profile:

| **Search Parameter**         | **Type** | **Description**                                                             | **FHIRPath Expression**                                                       |
|-----------------------------|----------|-----------------------------------------------------------------------------|--------------------------------------------------------------------------------|
| `patient.identifier`        | `token`  | Search for bundles containing a patient with a specific identifier (e.g. NIN) | `Bundle.entry.resource.ofType(Patient).identifier`                             |
| `patient-address-state`     | `token`  | Search for bundles where the patient resides in a specific Nigerian state    | `Bundle.entry.resource.ofType(Patient).address.state`                          |
| `organization-identifier`   | `token`  | Search for bundles referencing a healthcare facility with a specific ID      | `Bundle.entry.resource.ofType(Organization).identifier`                        |
| `patient-birthdate`         | `date`   | Search for bundles containing patients born on a specific date               | `Bundle.entry.resource.ofType(Patient).birthDate`                              |
| `_lastUpdated`              | `date`   | Search for bundles that were last updated on or after a specific timestamp   | `Bundle.meta.lastUpdated`                                                      |

---


### Supported RESTful Operations for Nigeria Immunization Profiles

This page describes the RESTful interactions supported for systems implementing the [**NGPatient**](StructureDefinition-NgPatient.html) and [**NGClaimsBundle**](StructureDefinition-ng-bundle-hmo-to-hospital.html) profiles, aligned with FHIR R4 and SMART Guidelines principles. These operations define how client systems (e.g., EMRs, registries, mobile apps) can interact with immunization-related patient data.

---

#### Overview of Supported RESTful [**NGPatient**](StructureDefinition-NgPatient.html) Interactions

| **Operation** | **FHIR Verb** | **Description**                                                                 |
|---------------|---------------|---------------------------------------------------------------------------------|
| `Read`        | `GET [base]/Patient/{id}` | Retrieve a specific immunization client record by logical ID.              |
| `Search`      | `GET [base]/Patient?[parameters]` | Query patient records using defined search parameters.                |
| `Create`      | `POST [base]/Patient` | Register a new immunization client (create a new Patient resource).         |
| `Update`      | `PUT [base]/Patient/{id}` | Update an existing patient record.                                           |
| `Patch`       | _(optional)_ | Apply partial updates to a patient record. _(Not required by default)_       |
| `Delete`      | _(not supported)_ | Deletion is not recommended for immunization clients (use status flags instead). |

---

#### Examples of Use

##### 1. Read Patient by ID
```markdown
GET /Patient/12345
```

##### 2. Search for Patient by Identifier
```markdown
GET /Patient?identifier=NIN12345678
```

##### 3. Create New Patient Record

```markdown
POST /Patient
Content-Type: application/fhir+json
```


```json
{
  "resourceType": "Patient",
  "identifier": [
    {
      "system": "https://nimc.gov.ng",
      "value": "NIN12345678"
    }
  ],
  "name": [
    {
      "family": "Okonkwo",
      "given": ["Adaeze"]
    }
  ],
  "gender": "female",
  "birthDate": "2022-04-15",
  ...
}
```
##### 4. Update an Existing Record

```markdown
PUT /Patient/12345
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "Patient",
  "id": "12345",
  ...
}
```




#### Supported Bundle Operations on [**NGClaimsBundle**](StructureDefinition-ng-bundle-hmo-to-hospital.html)

| **Operation Name**             | **Operation Code**         | **Description**                                                                                     | **Input**           | **Output**              |
|-------------------------------|-----------------------------|-----------------------------------------------------------------------------------------------------|---------------------|--------------------------|
| Validate Ng Bundle         | `$validate-ng-bundle`    | Validates a submitted bundle against Nigeria Test profiles                                 | `Bundle`            | `OperationOutcome`       |
| Submit Ng Bundle           | `$submit-ng-bundle`      | Submits a bundle to the national immunization registry                                              | `Bundle`            | Success Acknowledgement |
| Export Ng Bundle           | `$export-ng-bundle`      | Exports bundles by facility, district, or date                                                      | `Reference`, `dateTime` | `Bundle`            |
| Get Patient History           | `$get-patient-history`      | Returns all immunization bundles related to a specific patient                                     | `token`             | `Bundle`                 |
| Sync Ng Bundle             | `$sync-ng-bundle`        | Returns all bundles updated since a specified timestamp                                            | `dateTime`          | `Bundle`                 |
| Evaluate Completeness         | `$evaluate-completeness`    | Checks if all Must Support fields are populated in the submitted bundle                            | `Bundle`            | `OperationOutcome`       |
| Resolve Conflicts             | `$resolve-conflicts`        | Identifies and resolves duplicate/conflicting bundles for the same patient                         | `Reference`, `code` | `OperationOutcome`       |
| Generate Claims Summary| `$generate-summary`         | Produces a readable summary (e.g., printable claims card) from a bundle                      | `Bundle`            | `string` (HTML/Text)     |
| Remove Obsolete Bundles      | `$remove-obsolete-bundles`  | Deletes bundles of patients older than 24 months and marked inactive                               | `date`              | `integer` (count)        |



### Important Implementation Notes


Use validation tools to ensure submitted resources are profile-conformant.
Delete operation is disabled to avoid accidental removal of patient records; use status or metadata flags if deactivation is needed.
All RESTful interactions must be secured and comply with Nigeria’s health data protection policies.
All operations use standard FHIR OperationDefinition resources and can be extended with implementation-specific behavior. Where applicable, operations should respect access control based on organization, LGA, or user role.