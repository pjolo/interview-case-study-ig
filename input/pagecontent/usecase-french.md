### Contexte  

Dans le cadre d'un nouveau registre national de vaccination, il doit être possible de saisir de manière structurée les données des patients, les résultats de laboratoire (p. ex. tests sérologiques après une vaccination) et les vaccinations elles-mêmes. Les données doivent être échangées via FHIR.  

### Conditions professionnelles

### Données des patients  

Il doit être possible de saisir les informations suivantes concernant une patiente/un patient :  

{:class="table table-bordered"}
| Information | Obligatoire ? |
|---|---|
| Nom | Oui |
| Date de naissance | Oui |
| Sexe | Oui |
| Lieu d'origine (placeOfOrigin) (placeOfOrigin) | Oui – pertinent pour une identification univoque dans le contexte suisse |
| Numéro AVS| Optional –  à saisir s'il est disponible |  

### Résultats de laboratoire  

Dans le contexte des vaccinations, il doit également être possible de saisir des résultats de laboratoire (p. ex. tests sérologiques) :  

{:class="table table-bordered"}
| Information | Obligatoire ? |
|---|---|
| Référence au patient | Non |
| Code du test  | Oui |
| Résultat du test (p. ex. valeur du titre) | Oui |
| La personne/l'organisation qui effectue l'analyse de laboratoire| Non |

### Vaccinations

Dans le cadre du registre des vaccinations, l’OFSP souhaite à l’avenir pouvoir également enregistrer
les vaccins qui ont été administrés, y compris les
informations relatives à la sécurité. L'objectif est de pouvoir évaluer rétrospectivement si certains vaccins ont été administrés aux personnes présentant des intolérances connues ou des maladies préexistantes pertinentes, et si une réaction inattendue est survenue dans le cadre du suivi médical après la vaccination (par exemple, à des fins d'assurance qualité ou de pharmacovigilance).

Les centres de vaccination et les cabinets médicaux transmettent, pour chaque vaccination administrée,
les informations suivantes au registre central :

{:class="table table-bordered"}
| Information  | Obligatoire ? |
|---|---|
| Référence au patient | Oui |
| Vaccin administré (nom commercial ou code, par exemple conformément à l'autorisation de Swissmedic) | Oui |
| Date d’administration | Oui |
| Numéro de dose (par exemple, 1re ou 2e dose) | Oui |
| Personne/établissement qui a administré le vaccin (prestataire) | Oui |
| Intolérance connue de la personne aux vaccins ou à leurs composants (si documentée dans le dossier médical) | Oui |
| Maladie préexistante connue qui impose une attention particulière lors de la vaccination (par exemple, déficience immunitaire, affection fébrile aiguë au moment de la vaccination) | Oui |
| Observation pendant la période de suivi immédiatement après la vaccination (par exemple, contrôle circulatoire, anomalies, signes vitaux) | Oui |
| Numéro de lot du vaccin | Non |
| Remarque si la vaccination a été administrée sous surveillance médicale malgré une intolérance ou une affection préexistante connue | Non |