Bienvenue dans cette étude de cas dans le cadre du processus de candidature.  

### Exercices 1 - Question de compréhension

**Question 1 - Guide de mise en œuvre**  
Quelle est la fonction principale d'un guide de mise en œuvre FHIR ?

A.) Il définit la manière dont les ressources FHIR doivent être utilisées et restreintes pour un cas d'utilisation ou un contexte donné.   
B.) Il remplace intégralement la norme FHIR par ses propres règles.   
C.) Il s'agit exclusivement d'un outil logiciel de validation.  
D.) Il sert uniquement à documenter la terminologie.  

**Question 2 - Lien entre les ressources**   
Une ressource « Observation » contient un élément « subject » qui fait référence à une ressource « Patient ». Comment ce type de lien est-il nommé dans FHIR ?  

A.) Extension  
B.) Reference  
C.) Binding  
D.) Profile  

**Question 3 - Profilage/cardinalité**  
Un profil FHIR est dérivé d’une ressource de base. Dans la ressource de base, un élément est défini avec une cardinalité de 0..1. Selon la norme FHIR, laquelle des modifications suivantes est autorisée dans le profil dérivé ?  

A.) Conservation de la cardinalité 0..1 tout en modifiant le type de données pour le remplacer par un type incompatible.   
B.) Modification à 0..2  
C.) Extension à 1..∗    
D.) Restriction à 1..1   

**Question 4 - Binding Strength**  
Dans une ressource de base, la « Binding Strength » d'un code est définie comme obligatoire. Que doit prendre en compte un développeur de profil lorsqu'il souhaite restreindre cet élément ? 

A.) Le « Value Set » doit contenir exactement le même nombre de codes que celui de la ressource de base.     
B.) Il n'est pas autorisé de définir son propre « Value Set » ; il faut toujours utiliser « Value Set » par défaut.
C.) Le niveau de liaison ne doit pas être rétrogradé à « extensible » ou « preferred » dans le profil. 
D.) Dans le profil, la force de liaison doit absolument être définie sur « example ».  

**Question 5 - MustSupport**  
Que signifie l'attribut « 'mustSupport = true' » sur un élément d'un profil FHIR ? 

A.) Cet élément doit obligatoirement contenir une valeur (cardinalité au moins 1..1).   
B.) L'élément est automatiquement masqué dans la vue « Snapshot ».    
C.) Cet élément ne doit être utilisé que par des systèmes certifiés.   
D.) Les systèmes de mise en œuvre doivent être capables de traiter cet élément (le lire, l'enregistrer, l'afficher), même s'il n'est pas obligatoirement renseigné.   

**Question 6 – Slicing**  
À quoi sert le « slicing » dans un profil FHIR ?   

A.) Pour diviser une ressource en plusieurs ressources plus petites.    
B.) Pour définir et restreindre individuellement, au sein d'un élément répétable (par exemple Observation.component), différentes valeurs clairement identifiables.   
C.) Pour supprimer complètement un élément du profil.   
D.) Pour synchroniser plusieurs serveurs FHIR entre eux.   

***Veuillez noter votre réponse dans un fichier Word ou dans un fichier texte. Il suffit d'indiquer la lettre correspondant à la réponse.***  

### Exercice 2 - Analyse d'un guide de mise en œuvre FHIR  
Lisez attentivement le [cas d'utilisation](usecase-french.html), en particulier les
sections **« Données du patient »** et **« Résultats de laboratoire »**.  

Analysez les [profils](profiles.html) inclus dans le guide de mise en œuvre et vérifiez s'ils représentent correctement les demandes professionnelles décrites dans le cas d'utilisation.   

**Procédure :**

1.) Identifiez tous les écarts entre les exigences professionnelles et les profils disponibles (remarque : comparez-les avec le [CH Core Profile](https://fhir.ch/ig/ch-core/6.0.0/profiles.html)). 
2.) Pour chaque écart trouvé, décrivez les ajustements concrets que vous effectueriez.

💡 **Conseil :** Consultez dans le guide de mise en œuvre le **Snapshot-Table** du
profil (et pas seulement la vue différentielle) ; vous y verrez
tous les éléments de la ressource, y compris ceux hérités de la ressource de base
, avec les cardinalités et les types de données effectivement applicables.

***Veuillez noter votre réponse dans un fichier Word ou dans un fichier texte.***

### Exercices 3 - Choix du profil et modélisation FSH
Veuillez déterminer, sur la base des exigences professionnelles de la section [4.2.3 Vaccinations](https://pjolo.github.io/interview-case-study-ig/en/usecase-french.html#vaccinations) :

1. Quelle(s) ressource(s) FHIR choisiriez-vous comme base pour la mise en œuvre de cette demande ? Justifiez votre choix.    
2. Existe-t-il, dans le contexte suisse (CH Core), des profils adaptés que vous utiliseriez ? Si oui, lesquels ? Si non, créeriez-vous votre propre profil et sur quoi le baseriez-vous ? 

***Veuillez noter votre réponse dans un fichier Word ou dans un fichier texte.***

#### Modélisation FSH (bonus)
Créez un profil FHIR Shorthand (FSH) basé sur l'exercice « Choix du profil et modélisation FSH ». Il n'est pas nécessaire qu'il soit complet ou syntaxiquement parfait ; l'objectif est de montrer comment vous structureriez et modéliseriez un tel profil.    

Pour vous aider dans la modélisation, vous pouvez vous référer à l'[FHIR Cheat Sheet](https://devdays.com/wp-content/uploads/2023/09/Firely_FHIR_Cheat_Sheet.pdf) et créer puis valider la ressource à l'aide de l'[FSH-Code Online-Tools](https://fshonline.fshschool.org/).

**Validation :** 
Pour que la validation des ressources CH-Core fonctionne, vous devez indiquer les dépendances 'ch.fhir.ig.ch-core#6.0.0' dans les paramètres de l'outil en ligne. Veillez également à utiliser, comme valeur 'Parent', le nom calculable (Computable Name) correct du profil concerné.  

***Veuillez noter votre réponse dans un fichier Word ou dans un fichier texte.***

<img src="config.jpg" alt="Use Case Diagramm" style="width:900px"/>           



