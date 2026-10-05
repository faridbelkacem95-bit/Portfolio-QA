# Projet Homey – Tests fonctionnels et automatisés

## Présentation

Homey est un projet de test logiciel réalisé dans le cadre de ma formation QA.

Le périmètre présenté dans ce portfolio porte principalement sur le processus de réservation entre un voyageur et un hôte.

Deux User Stories ont été testées :

- **US-07 – Faire une demande de réservation (P1)**
- **US-08 – Traiter une demande de réservation (P2)**

Le projet combine des activités de **tests fonctionnels manuels**, de **gestion des anomalies** et d'**automatisation de tests IHM**.

## Démarche de test

Les activités réalisées sur ce projet comprennent :

- analyse des User Stories et des critères d'acceptation ;
- conception des cas de test ;
- préparation des plans de test ;
- exécution des tests fonctionnels ;
- collecte des preuves d'exécution ;
- identification et qualification des anomalies ;
- suivi des anomalies dans Jira ;
- analyse des résultats de la campagne de test ;
- recommandation GO / NO GO ;
- automatisation de scénarios IHM avec Robot Framework et Selenium.

## Résultats de la campagne de test

| Indicateur | US-07 | US-08 |
|---|---:|---:|
| Cas de test | 12 | 20 |
| Tests réussis | 10 | 17 |
| Tests en échec | 2 | 3 |
| Taux de réussite | 83,3 % | 85 % |
| Objectif qualité | 100 % | 80 % |
| Conformité | Non validée | Non validée |

### Bilan global

- **32 cas de test exécutés**
- **27 tests réussis**
- **5 tests en échec**
- **100 % du périmètre exécuté**
- **≈ 84 % de réussite globale**
- **5 anomalies identifiées**

## Gestion des anomalies

Les anomalies détectées pendant la campagne ont été documentées et suivies dans **Jira**.

Le périmètre comporte :

- **2 anomalies bloquantes**
- **2 anomalies majeures**
- **1 anomalie mineure**

Les anomalies bloquantes concernent notamment le processus de paiement de l'US-08.

Les captures et preuves associées aux anomalies sont disponibles dans le dossier dédié du projet.

## Décision qualité – NO GO

À l'issue de la campagne de test, la recommandation est :

### 🔴 NO GO

Bien que le taux de réussite global soit d'environ 84 % et que 100 % des cas prévus aient été exécutés, les critères qualité définis ne sont pas atteints.

**US-07 (P1)** atteint 83,3 % de réussite alors que l'objectif défini est de 100 %.

**US-08 (P2)** atteint 85 % de réussite, soit davantage que l'objectif de 80 %, mais deux anomalies bloquantes affectent le processus de paiement.

La mise en production n'est donc pas recommandée tant que les anomalies critiques ne sont pas corrigées et que les tests concernés n'ont pas été réexécutés.

## Automatisation des tests

Une partie des scénarios fonctionnels a également été automatisée afin de mettre en pratique l'automatisation des tests IHM.

### Technologies utilisées

- Python
- Robot Framework
- SeleniumLibrary
- Selenium
- Git / GitHub

Les sélecteurs de l'application sont centralisés afin de faciliter la maintenance des scripts d'automatisation.

Les scénarios automatisés couvrent notamment :

- la connexion utilisateur ;
- la demande de réservation ;
- le traitement d'une réservation côté hôte ;
- la confirmation ;
- le paiement ;
- l'annulation.

## Démonstrations des tests automatisés

Des vidéos d'exécution sont également disponibles afin d'illustrer le fonctionnement des scénarios automatisés.

Elles permettent de visualiser l'exécution réelle des tests Robot Framework / Selenium sur l'application Homey.

> Les liens vers les démonstrations seront ajoutés après intégration des vidéos au portfolio.

## Outils utilisés

- **Jira** – gestion et suivi des anomalies
- **Robot Framework** – automatisation des scénarios de test
- **Selenium / SeleniumLibrary** – automatisation de l'interface Web
- **Python** – support de l'automatisation
- **Git / GitHub** – versionnement et présentation du projet

## Organisation du projet

Projet_Homey/
- tests_manuels/
- anomalies/
- rapport_test/
- automatisation/
- demonstrations/

## Compétences mises en pratique

Ce projet m'a permis de mettre en pratique :

- la conception de cas de test fonctionnels ;
- l'exécution et le suivi d'une campagne de test ;
- l'analyse des résultats ;
- la rédaction et la qualification d'anomalies ;
- l'utilisation de Jira ;
- l'application de critères de qualité ;
- la formulation d'une recommandation GO / NO GO ;
- l'automatisation de tests IHM ;
- Robot Framework et Selenium ;
- l'organisation et la documentation d'un projet QA.
