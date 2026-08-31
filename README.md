# Interview Case Study – FHIR Implementation Guide

This repository contains a FHIR Implementation Guide (IG) created as a case study for a job application process. It is based on the [HL7 Switzerland IG template](https://github.com/ahdis/ch-ig) and built with [FHIR Shorthand (FSH)](https://fshschool.org/).

## Use Case: National Vaccination Registry

The use case describes a new national vaccination registry. Patient data, laboratory results (e.g. serological tests after vaccination), and vaccinations themselves — including safety-relevant information — must be captured and exchanged using FHIR.

The full use case is available in two languages:

- [German Use Case](usecase-german.html)
- [French Use Case](usecase-french.html)

## Tasks for Candidates

The IG presents three tasks that are described on the home pages:

- [Home (German)](https://pjolo.github.io/interview-case-study-ig/index.html)
- [Home (French)](https://pjolo.github.io/interview-case-study-ig/indexFR.html)

| Task | Description | Language |
|---|---|---|
| 1 – Knowledge Questions | Multiple-choice questions covering core FHIR concepts (IG, references, cardinality, binding strength, mustSupport, slicing). | DE / FR |
| 2 – IG Analysis | Compare the profiles in this IG against the use case requirements and identify deviations. | DE / FR |
| 3 – Profile Selection & FSH Modeling | Choose appropriate FHIR resources/profiles for the vaccination use case and create an FSH profile (bonus). | DE / FR |

## Published IG

The continuous integration build is available here:

- **CI Build:** <https://pjolo.github.io/interview-case-study-ig/>
