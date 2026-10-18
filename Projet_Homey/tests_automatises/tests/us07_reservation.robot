*** Settings ***
Documentation     Tests IHM automatisés - US-07 : Faire une demande de réservation
Resource          ../resources/keywords.resource
Suite Setup       Ouvrir Le Navigateur Sur Homey
Suite Teardown    Close Browser


*** Test Cases ***
TC-07-01 - Réservation réussie avec données valides
    [Documentation]    Un Voyageur connecté fait une demande de réservation valide.
    ...    Résultat attendu (story) : réservation créée + notification Hôte dans Messages.
    ...    Remarque : ce test ne vérifie que le message de confirmation côté Voyageur.
    ...    Durée choisie (9 nuits) pour respecter la règle de durée minimale (7 nuits)
    ...    de cette annonce.
    [Tags]    US-07    ct1    p1

    Se Connecter En Tant Que Voyageur
    Ouvrir L'Annonce    ${ANNONCE_TEST}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-08-01    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-08-10
    Renseigner Le Nombre De Voyageurs    3
    Soumettre La Demande De Réservation

TC-07-12 - Réservation de la durée minimale exacte (7 nuits) acceptée
    [Documentation]    Cas limite valide : exactement 7 nuits (durée minimale de
    ...    cette annonce), doit être accepté.
    [Tags]    US-07    ct1    p1

    Se Connecter En Tant Que Voyageur
    Ouvrir L'Annonce    ${ANNONCE_TEST}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-08-11    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-08-18
    Renseigner Le Nombre De Voyageurs    2
    Soumettre La Demande De Réservation

TC-07-04 - Réservation d'une seule nuit refusée
    [Documentation]    Règle découverte en exécution : durée minimale = 7 nuits pour
    ...    cette annonce (valeur variable selon l'annonce, observée entre 2 et 7).
    ...    Le système doit bloquer la demande et afficher le message d'erreur.
    [Tags]    US-07    ct1    p1

    Se Connecter En Tant Que Voyageur
    Ouvrir L'Annonce    ${ANNONCE_TEST}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-08-19    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-08-20
    Renseigner Le Nombre De Voyageurs    2
    Cliquer Sur Demande De Reservation
    Wait Until Page Contains    Les jours minimums d'une réservation sont 7    timeout=10s

TC-07-11 - Nombre de voyageurs égal à zéro
    [Documentation]    Un Voyageur connecté laisse le nombre de voyageurs à 0 et tente
    ...    de valider une demande de réservation. Le système doit bloquer la demande
    ...    et afficher le message "Veuillez choisir des voyageurs".
    ...    Durée choisie (7 nuits) pour respecter la règle de durée minimale et isoler
    ...    l'erreur testée (nombre de voyageurs).
    [Tags]    US-07    ct1    p1

    Se Connecter En Tant Que Voyageur
    Ouvrir L'Annonce    ${ANNONCE_TEST}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-08-21    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-08-28
    Renseigner Le Nombre De Voyageurs    0
    Cliquer Sur Demande De Reservation
    Wait Until Page Contains    Veuillez choisir des voyageurs    timeout=15s