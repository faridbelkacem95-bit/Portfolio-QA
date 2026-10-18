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

Les captures et preuves associées aux anomalies sont disponibles dans le dossier `anomalies/`.

## Décision qualité – NO GO

À l'issue de la campagne de test, la recommandation est :

**NO GO**

Bien que le taux de réussite global soit d'environ 84 % et que 100 % des cas prévus aient été exécutés, les critères qualité définis ne sont pas atteints.

**US-07 (P1)** atteint 83,3 % de réussite alors que l'objectif défini est de 100 %.

**US-08 (P2)** atteint 85 % de réussite, soit davantage que l'objectif de 80 %, mais deux anomalies bloquantes affectent le processus de paiement.

La mise en production n'est donc pas recommandée tant que les anomalies bloquantes ne sont pas corrigées et que les tests concernés n'ont pas été réexécutés.

## Automatisation des tests

Une partie des scénarios fonctionnels a été automatisée avec **Robot Framework et Selenium**.

Les scénarios automatisés couvrent notamment :

- La connexion utilisateur
- La demande de réservation
- Le traitement d'une réservation côté hôte
- La confirmation
- Le paiement
- L'annulation

Les scripts sont organisés dans le dossier `tests_automatises/`.

Les ressources et sélecteurs sont séparés des scénarios afin de faciliter leur maintenance.

## Outils et technologies

- **Jira** : gestion et suivi des anomalies
- **Xray** : gestion des cas de test et suivi des exécutions
- **Robot Framework** : automatisation des tests IHM
- **Selenium / SeleniumLibrary** : automatisation de l'interface Web
- **Python** : support de l'automatisation
- **GitHub** : présentation des livrables du projet

## Organisation du projet

- `tests_manuels/` : documents et livrables des tests manuels
- `anomalies/` : anomalies et preuves associées
- `tests_automatises/` : scripts Robot Framework, ressources et suivi des exécutions

## Compétences mises en pratique

- Analyse des User Stories et des critères d'acceptation
- Conception, implémentation et exécution des tests
- Gestion et suivi des tests avec Xray
- Identification et documentation des anomalies dans Jira
- Analyse des résultats d'une campagne de test
- Application des critères de qualité
- Automatisation des tests IHM avec Robot Framework et Selenium
- Rédaction d'un rapport de test final
- Formulation d'une recommandation GO / NO GO
