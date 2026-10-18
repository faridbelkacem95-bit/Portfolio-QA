*** Settings ***
Documentation     Tests IHM automatisés - US-08 : Confirmation d'une demande, frais et remises
Resource          ../resources/keywords.resource
Suite Setup       Ouvrir Le Navigateur Sur Homey
Suite Teardown    Close Browser


*** Test Cases ***
TC-08-14 - Confirmation d'une demande NOUVEAU
    [Documentation]    Ce test crée sa propre réservation sur l'annonce de l'Hôte
    ...    avant de la confirmer.
    ...    Résultat attendu : passage à ATTENTE DE PAIEMENT / DISPONIBLE.
    [Tags]    US-08    ct4    p2

    Se Connecter En Tant Que Voyageur
    Ouvrir Une Annonce Par Url    ${URL_ANNONCE_HOTE}    ${ANNONCE_HOTE}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-10-17    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-10-20
    Renseigner Le Nombre De Voyageurs    2
    Soumettre La Demande De Réservation
    Se Deconnecter

    Se Connecter En Tant Que Hote
    Ouvrir Les Reservations Hote
    Confirmer Premiere Demande Nouveau
    Confirmer La Disponibilite
    Se Deconnecter

TC-08-17 - Ajout d'un frais supplémentaire
    [Documentation]    Ce test crée sa propre réservation sur l'annonce de l'Hôte
    ...    avant d'y ajouter un frais.
    ...    Résultat attendu : le frais apparaît dans le récapitulatif.
    [Tags]    US-08    ct5    p2

    Se Connecter En Tant Que Voyageur
    Ouvrir Une Annonce Par Url    ${URL_ANNONCE_HOTE}    ${ANNONCE_HOTE}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-10-22    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-10-25
    Renseigner Le Nombre De Voyageurs    2
    Soumettre La Demande De Réservation
    Se Deconnecter

    Se Connecter En Tant Que Hote
    Ouvrir Les Reservations Hote
    Confirmer Premiere Demande Nouveau
    Ajouter Des Frais    Ménage    30
    Se Deconnecter

TC-08-18 - Ajout d'une remise
    [Documentation]    Ce test crée sa propre réservation sur l'annonce de l'Hôte
    ...    avant d'y ajouter une remise.
    ...    Résultat attendu : la remise apparaît dans le récapitulatif.
    [Tags]    US-08    ct5    p2

    Se Connecter En Tant Que Voyageur
    Ouvrir Une Annonce Par Url    ${URL_ANNONCE_HOTE}    ${ANNONCE_HOTE}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-10-26    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-10-29
    Renseigner Le Nombre De Voyageurs    2
    Soumettre La Demande De Réservation
    Se Deconnecter

    Se Connecter En Tant Que Hote
    Ouvrir Les Reservations Hote
    Confirmer Premiere Demande Nouveau
    Faire Une Remise    Fidélité    10
    Se Deconnecter