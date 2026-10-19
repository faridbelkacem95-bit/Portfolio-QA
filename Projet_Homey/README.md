# Projet Homey – Projet de fin de formation (PFF)

## Présentation

Homey est mon projet de fin de formation en test logiciel et assurance qualité (QA).

Le périmètre présenté dans ce portfolio porte principalement sur le processus de réservation entre un voyageur et un hôte.

Deux User Stories ont été testées :

- **US-07 – Faire une demande de réservation (P1)**
- **US-08 – Traiter une demande de réservation (P2)**

Ce projet combine des activités de tests fonctionnels manuels, de gestion des tests avec Xray, de suivi des anomalies dans Jira et d'automatisation des tests IHM.

## Démarche de test

Les activités réalisées sur ce projet comprennent :

- Analyse des User Stories et des critères d'acceptation
- Conception des cas de test
- Implémentation et préparation des tests
- Exécution des tests fonctionnels manuels
- Gestion et suivi des cas de test avec Xray
- Collecte des preuves d'exécution
- Identification, qualification et suivi des anomalies dans Jira
- Conception, implémentation et exécution de tests automatisés IHM avec Robot Framework et Selenium
- Analyse des résultats de la campagne de test
- Rédaction du rapport de test final
- Formulation d'une recommandation GO / NO GO

## Résultats de la campagne de test

| Indicateur | US-07 | US-08 |
|---|---:|---:|
| Cas de test exécutés | 12 | 20 |
| Tests réussis | 10 | 17 |
| Tests en échec | 2 | 3 |
| Taux de réussite | 83,3 % | 85 % |
| Objectif qualité | 100 % | 80 % |
| Conformité | Non conforme | Non conforme |

### Bilan global

- **32 cas de test exécutés**
- **27 tests réussis**
- **5 tests en échec**
- **100 % du périmètre de test prévu exécuté**
- **84,4 % de réussite globale**
- **5 anomalies identifiées**

Les résultats montrent que l'ensemble des cas de test prévus a été exécuté. Toutefois, certains critères de qualité ne sont pas satisfaits.

## Gestion des anomalies

Les anomalies détectées pendant la campagne ont été documentées et suivies dans **Jira**.

Le périmètre comporte :

- **2 anomalies bloquantes**
- **2 anomalies majeures**
- **1 anomalie mineure**

Les anomalies bloquantes concernent notamment le processus de paiement de l'US-08.

Les captures et preuves associées sont disponibles dans le dossier [`anomalies/`](anomalies/).

**Xray** a été utilisé pour la gestion des cas de test, le suivi des exécutions et la traçabilité des tests.

## Décision qualité – NO GO

À l'issue de la campagne de test, la recommandation finale est :

**NO GO – Mise en production non recommandée.**

Cette décision repose sur les éléments suivants :

- **US-07 (P1)** : taux de réussite de 83,3 %, inférieur à l'objectif qualité de 100 %.
- **US-08 (P2)** : taux de réussite de 85 %, supérieur à l'objectif de 80 %, mais présence de deux anomalies bloquantes affectant le processus de paiement.

Malgré un taux de réussite global de 84,4 % et une exécution complète du périmètre prévu, les critères de qualité définis ne sont pas tous respectés.

La mise en production n'est donc pas recommandée tant que les anomalies bloquantes ne sont pas corrigées et que les tests concernés n'ont pas été réexécutés.

## Rapport de test final

À l'issue de la campagne, deux livrables ont été réalisés :

- [Rapport de test Homey (Excel)](rapport_test/Rapport_de_test_Homey.xlsx)
- [Note d'analyse du rapport de test (PDF)](rapport_test/Note_analyse_Rapport_de_test_Homey.pdf)

Ces documents présentent les résultats des tests, les indicateurs de qualité, l'analyse des anomalies et la justification de la recommandation finale NO GO.

## Automatisation des tests

Une partie des scénarios fonctionnels a été automatisée avec **Robot Framework et Selenium**.

Les scénarios automatisés couvrent notamment :

- La connexion utilisateur
- La demande de réservation
- Le traitement d'une réservation côté hôte
- La confirmation
- Le paiement
- L'annulation

Les scripts sont organisés dans le dossier [`tests_automatises/`](tests_automatises/).

Les ressources et les sélecteurs sont séparés des scénarios afin de faciliter leur maintenance.

Les résultats d'exécution sont suivis et analysés, y compris les échecs techniques rencontrés lors de certaines exécutions.

## Outils et technologies

- **Jira** : gestion et suivi des anomalies
- **Xray** : gestion des cas de test et suivi des exécutions
- **Robot Framework** : automatisation des tests IHM
- **Selenium / SeleniumLibrary** : automatisation de l'interface Web
- **Python** : support de l'automatisation
- **Excel** : suivi et analyse des résultats de test
- **GitHub** : organisation et présentation des livrables

## Organisation du projet

- [`tests_manuels/`](tests_manuels/) : plans de test, résultats et preuves d'exécution des US-07 et US-08
- [`anomalies/`](anomalies/) : anomalies identifiées dans Jira et captures associées
- [`tests_automatises/`](tests_automatises/) : scénarios Robot Framework, ressources et suivi des exécutions
- [`rapport_test/`](rapport_test/) : rapport de test final et note d'analyse de la campagne

## Compétences mises en pratique

- Analyse des User Stories et des critères d'acceptation
- Conception, implémentation et exécution des tests
- Gestion et suivi des tests avec Xray
- Identification et documentation des anomalies dans Jira
- Analyse des résultats d'une campagne de test
- Application des critères de qualité
- Automatisation des tests IHM avec Robot Framework et Selenium
- Analyse des échecs d'exécution
- Rédaction d'un rapport de test final
- Formulation d'une recommandation GO / NO GO

## Objectif du projet

Ce projet illustre ma capacité à mener une démarche de test logiciel, depuis l'analyse des besoins jusqu'à l'évaluation de la qualité d'une application, en combinant tests manuels, automatisation, gestion des anomalies et analyse des résultats.
