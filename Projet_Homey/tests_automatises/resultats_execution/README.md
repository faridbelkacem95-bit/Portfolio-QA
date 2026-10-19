# Résultats d'exécution – Tests automatisés Homey

## Présentation

Cette section présente le suivi et l'analyse des tests automatisés réalisés avec Robot Framework et Selenium dans le cadre du projet Homey.

Les tests concernent les User Stories US-07 et US-08, notamment la réservation, sa confirmation, son annulation et le paiement.

## Suivi des tests

Le fichier `Suivi_Tests_Automatises_Homey.xlsx` permet de consulter :

- Les cas de test automatisés
- Les résultats d'exécution (PASS / FAIL)
- Le suivi des tests dans le temps
- Les anomalies et difficultés rencontrées

[Consulter le tableau de suivi des tests automatisés](Suivi_Tests_Automatises_Homey.xlsx)

## Analyse des résultats

Le tableau Excel présente le suivi de plusieurs exécutions des tests automatisés, avec des résultats PASS enregistrés à différentes dates.

Les campagnes de tests ont également permis d'identifier des échecs techniques nécessitant une analyse.

### Exécution du 27 juillet 2026 – US-08 Paiement

Une exécution de deux scénarios automatisés liés au paiement a donné les résultats suivants :

| Indicateur | Résultat |
|---|---:|
| Tests exécutés | 2 |
| Tests réussis | 0 |
| Tests en échec | 2 |

**TC-08-01 – Initialisation complète du profil de paiement**

Robot Framework n'a pas détecté le champ « Prénom » dans le délai de 10 secondes. Le scénario s'est interrompu avant la saisie des informations du profil de paiement.

**TC-08-09 – Paiement réussi par le voyageur**

Robot Framework n'a pas trouvé le lien « Réservations ». Le scénario s'est interrompu avant la confirmation de la réservation et l'exécution du paiement.

### Bilan

Ces deux échecs concernent la localisation ou la visibilité d'éléments de l'interface utilisateur.

Une analyse complémentaire des sélecteurs et du comportement de l'application est nécessaire pour déterminer leur cause exacte.

Ces résultats correspondent à une exécution particulière et ne représentent pas l'ensemble des résultats enregistrés dans le tableau Excel.

Le suivi des différentes exécutions permet d'observer les résultats des tests, d'analyser les échecs et de vérifier les corrections apportées.

## Outils utilisés

- Robot Framework
- Selenium
- Python
- Excel
- GitHub
