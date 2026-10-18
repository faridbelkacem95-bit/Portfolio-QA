*** Settings ***
Documentation     Tests IHM automatisés - US-07 : Accès restreint à un utilisateur non connecté
Resource          ../resources/keywords.resource
Suite Setup       Ouvrir Le Navigateur Sur Homey
Suite Teardown    Close Browser


*** Test Cases ***
TC-07-07 - Demande de réservation par un utilisateur non connecté
    [Documentation]    Un visiteur non connecté sélectionne des dates, renseigne le
    ...    nombre de voyageurs, puis clique sur "Demande de réservation". Le système
    ...    doit bloquer la demande et afficher un message invitant à se connecter.
    ...    Durée choisie (7 nuits) pour respecter la règle de durée minimale de cette
    ...    annonce et isoler l'erreur testée (connexion requise).
    [Tags]    US-07    ct3    p1

    Go To    ${URL_ANNONCE_TEST}
    Page Should Contain    Georgeus Villa In The Woods
    Sélectionner Une Date    ${DATE_ARRIVE_FIELD}    2026-08-18    ${FALSE}
    Sélectionner Une Date    ${DATE_DEPART_FIELD}    2026-08-25    ${FALSE}
    Renseigner Le Nombre De Voyageurs    2
    Cliquer Sur Demande De Reservation
    Wait Until Page Contains    Vous devez vous connecter pour effectuer une réservation    timeout=15s