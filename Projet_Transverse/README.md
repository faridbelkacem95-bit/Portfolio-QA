# Projet Transverse – Tests logiciels

## Présentation

Ce projet a été réalisé au cours de ma formation en test logiciel.

Il m'a permis de mettre en pratique différentes activités de tests manuels et automatisés, ainsi que des outils de gestion des tests et d'intégration continue.

## Travaux réalisés

### Tests manuels

- Analyse, conception, implémentation et exécution des tests manuels
- Gestion et suivi des cas de test avec Xray
- Identification et documentation des anomalies dans Jira

### Tests automatisés

- Tests unitaires avec Python et Unittest
- Tests API avec Robot Framework
- Tests IHM avec Robot Framework et Selenium
- Automatisation de scénarios de connexion valides et invalides
- Création de scripts pour lancer les tests automatisés

### Intégration continue

- Mise en place d'un pipeline Jenkins pour automatiser l'exécution des tests unitaires

### Suivi des tests

- Analyse des résultats d'exécution
- Rédaction du rapport de test final

## Résultats d'exécution des tests IHM

Une campagne de tests IHM automatisés avec Robot Framework et Selenium a permis d'obtenir les résultats suivants :

| Indicateur | Résultat |
|---|---:|
| Tests exécutés | 8 |
| Tests réussis | 7 |
| Tests en échec | 1 |
| Tests ignorés | 0 |
| Taux de réussite | 87,5 % |

### Analyse de l'échec

Le test en échec concerne le scénario de déconnexion après une connexion réussie.

Lors de l'exécution, Robot Framework n'a pas détecté le lien de déconnexion dans le délai de 15 secondes.

L'échec s'est produit avant l'action de déconnexion. Une analyse complémentaire du sélecteur XPath et du comportement de l'interface est nécessaire pour identifier la cause exacte.

### Rapports d'exécution

Les résultats détaillés de cette campagne sont disponibles dans les fichiers suivants :

- [Rapport d'exécution Robot Framework](report.html)
- [Journal détaillé d'exécution](log.html)
- [Résultats d'exécution au format XML](output.xml)

Les fichiers HTML peuvent être téléchargés et ouverts dans un navigateur pour consulter les rapports Robot Framework.

## Structure du projet

- `tests_ihm/` : tests automatisés de l'interface utilisateur
- `tests_api/` : tests automatisés des API
- `tests_unitaires/` : tests unitaires avec Python et Unittest
- `lancer_tests_unitaires.bat` : lancement des tests unitaires
- `lancer_tests_api.bat` : lancement des tests API
- `lancer_tests_ihm.bat` : lancement des tests IHM
- `lancer_tous_les_tests.bat` : lancement de l'ensemble des tests
- `log.html` : journal détaillé des tests IHM
- `report.html` : rapport d'exécution des tests IHM
- `output.xml` : résultats d'exécution des tests IHM au format XML

## Outils et technologies

- Jira
- Xray
- Python
- Unittest
- Robot Framework
- Selenium
- Jenkins

## Compétences mises en pratique

- Analyse, conception, implémentation et exécution des tests
- Tests manuels et automatisés
- Tests unitaires, API et IHM
- Gestion et suivi des tests avec Xray
- Identification et documentation des anomalies dans Jira
- Automatisation de l'exécution des tests unitaires avec Jenkins
- Analyse des résultats d'exécution
- Investigation des échecs de tests automatisés
- Rédaction de rapports de test

## Livrables disponibles

Ce dépôt présente les scripts de test, les fichiers de lancement et les résultats d'exécution conservés à l'issue de ma formation.

Les activités de tests manuels, de gestion des tests et de rédaction du rapport final ont également été réalisées pendant la formation, mais leurs livrables ne sont pas disponibles dans ce dépôt.
