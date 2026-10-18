*** Settings ***
Documentation     Tests IHM automatisés - US-08 : Paiement d'une réservation
Resource          ../resources/keywords.resource
Suite Setup       Ouvrir Le Navigateur Sur Homey
Suite Teardown    Close Browser


*** Test Cases ***
TC-08-01 - Initialisation complète du profil de paiement
    [Documentation]    L'Hôte initialise complètement son profil de paiement (identité,
    ...    adresse, mode Virement bancaire). Résultat attendu : message "Félicitations".
    [Tags]    US-08    ct1    p2

    Se Connecter En Tant Que Hote
    Initialiser Profil De Paiement    Farid    HDK    12 rue des Tests    Paris    75011
    Se Deconnecter

TC-08-09 - Paiement réussi par le Voyageur
    [Documentation]    Ce test crée sa propre réservation sur l'annonce de l'Hôte
    ...    (Abdel), pour que la confirmation soit possible côté Hôte.
    ...    Résultat attendu : statut RESERVE, message "Bien joué".
    [Tags]    US-08    ct3    p2

    Se Connecter En Tant Que Voyageur
    Ouvrir Une Annonce Par Url    ${URL_ANNONCE_HOTE}    ${ANNONCE_HOTE}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-12-04    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-12-08
    Renseigner Le Nombre De Voyageurs    2
    Soumettre La Demande De Réservation
    Se Deconnecter

    Se Connecter En Tant Que Hote
    Ouvrir Les Reservations Hote
    Confirmer Premiere Demande Nouveau
    Confirmer La Disponibilite
    Se Deconnecter

    Se Connecter En Tant Que Voyageur
    Go To    ${BASE_URL}/index.php/reservations/
    Payer La Reservation