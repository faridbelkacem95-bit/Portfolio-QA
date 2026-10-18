*** Settings ***
Documentation     Tests IHM automatisés - US-08 : Annulation d'une demande/réservation
Resource          ../resources/keywords.resource
Suite Setup       Ouvrir Le Navigateur Sur Homey
Suite Teardown    Close Browser


*** Test Cases ***
TC-08-19 - Annulation d'une demande au statut NOUVEAU
    [Documentation]    Ce test crée sa propre réservation sur l'annonce de l'Hôte avant
    ...    de l'annuler directement.
    ...    Résultat attendu : passage à ANNULE.
    [Tags]    US-08    ct5    p2

    Se Connecter En Tant Que Voyageur
    Ouvrir Une Annonce Par Url    ${URL_ANNONCE_HOTE}    ${ANNONCE_HOTE}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-12-15    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-12-18
    Renseigner Le Nombre De Voyageurs    2
    Soumettre La Demande De Réservation
    Go To    ${BASE_URL}/index.php/reservations/
    Annuler La Reservation

TC-08-20 - Annulation d'une réservation au statut RESERVE
    [Documentation]    Ce test crée sa propre réservation, la fait confirmer et payer
    ...    par les deux rôles, puis l'annule depuis le statut RESERVE.
    ...    Résultat attendu : passage à ANNULE, même depuis RESERVE.
    [Tags]    US-08    ct5    p2

    Se Connecter En Tant Que Voyageur
    Ouvrir Une Annonce Par Url    ${URL_ANNONCE_HOTE}    ${ANNONCE_HOTE}
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-12-19    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-12-23
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
    Go To    ${BASE_URL}/index.php/reservations/
    Annuler La Reservation