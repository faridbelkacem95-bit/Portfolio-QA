*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          variables.robot
Variables         locators.py


*** Keywords ***
Cliquer De Maniere Fiable
    [Arguments]    ${locator}
    TRY
        Click Element    ${locator}
    EXCEPT    AS    ${erreur}
        ${element}=    Get WebElement    ${locator}
        Execute Javascript    arguments[0].click();    ARGUMENTS    ${element}
    END

Cliquer Sur Element Visible Parmi Plusieurs
    [Arguments]    ${locator}
    ${elements}=    Get WebElements    ${locator}
    FOR    ${el}    IN    @{elements}
        ${visible}=    Run Keyword And Return Status    Element Should Be Visible    ${el}
        IF    ${visible}
            Cliquer De Maniere Fiable    ${el}
            RETURN
        END
    END
    Fail    Aucun élément visible trouvé pour le sélecteur ${locator}

Ouvrir Le Navigateur Sur Homey
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Se Connecter En Tant Que Voyageur
    Go To    ${BASE_URL}
    ${deja_connecte}=    Run Keyword And Return Status    Element Should Not Be Visible    ${LOGIN_LINK}
    IF    ${deja_connecte}
        RETURN
    END
    Cliquer De Maniere Fiable    ${LOGIN_LINK}
    Wait Until Element Is Visible    ${LOGIN_USERNAME_FIELD}    timeout=10s
    Input Text           ${LOGIN_USERNAME_FIELD}    ${VOYAGEUR_USER}
    Input Password        ${LOGIN_PASSWORD_FIELD}    ${VOYAGEUR_PASS}
    Click Button          ${LOGIN_SUBMIT_BUTTON}
    Wait Until Location Contains    ${DASHBOARD_URL_FRAGMENT}    timeout=10s
    Page Should Contain    ${DASHBOARD_WELCOME_TEXT}

Se Connecter En Tant Que Hote
    Go To    ${BASE_URL}
    ${deja_connecte}=    Run Keyword And Return Status    Element Should Not Be Visible    ${LOGIN_LINK}
    IF    ${deja_connecte}
        RETURN
    END
    Cliquer De Maniere Fiable    ${LOGIN_LINK}
    Wait Until Element Is Visible    ${LOGIN_USERNAME_FIELD}    timeout=10s
    Input Text           ${LOGIN_USERNAME_FIELD}    ${HOTE_USER}
    Input Password        ${LOGIN_PASSWORD_FIELD}    ${HOTE_PASS}
    Click Button          ${LOGIN_SUBMIT_BUTTON}
    Wait Until Location Contains    ${DASHBOARD_URL_FRAGMENT}    timeout=10s
    Page Should Contain    ${DASHBOARD_WELCOME_TEXT}

Se Deconnecter
    Go To    ${BASE_URL}/index.php/profile/
    Wait Until Element Is Visible    ${LOGOUT_LINK}    timeout=10s
    Cliquer De Maniere Fiable    ${LOGOUT_LINK}
    Wait Until Element Is Visible    ${LOGIN_LINK}    timeout=10s

Ouvrir L'Annonce
    [Arguments]    ${nom_annonce}
    Go To    ${URL_ANNONCE_TEST}
    Page Should Contain    ${nom_annonce}
    Wait Until Element Is Visible    ${DATE_ARRIVE_FIELD}    timeout=10s

Ouvrir Une Annonce Par Url
    [Arguments]    ${url_annonce}    ${nom_annonce}
    Go To    ${url_annonce}
    Page Should Contain    ${nom_annonce}
    Wait Until Element Is Visible    ${DATE_ARRIVE_FIELD}    timeout=10s

Aller Au Mois Suivant
    Cliquer De Maniere Fiable    ${CALENDAR_NEXT_MONTH_BUTTON}
    Sleep    0.5s

Sélectionner Une Date
    [Arguments]    ${champ_date}    ${date_a_selectionner}    ${attendre_fermeture}=${TRUE}
    Cliquer De Maniere Fiable    ${champ_date}
    ${jour_locator}=    Format String    ${CALENDAR_DAY_BY_DATE}    ${date_a_selectionner}
    ${visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${jour_locator}    timeout=2s
    ${tentatives}=    Set Variable    0
    WHILE    not ${visible} and ${tentatives} < 6
        Aller Au Mois Suivant
        ${visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${jour_locator}    timeout=2s
        ${tentatives}=    Evaluate    ${tentatives} + 1
    END
    Wait Until Element Is Visible    ${jour_locator}    timeout=5s
    Cliquer De Maniere Fiable    ${jour_locator}
    IF    ${attendre_fermeture}
        Wait Until Element Is Not Visible    ${CALENDAR_CONTAINER}    timeout=10s
    END

Renseigner Le Nombre De Voyageurs
    [Arguments]    ${nombre_adultes}
    Cliquer De Maniere Fiable    ${GUESTS_FIELD}
    FOR    ${i}    IN RANGE    ${nombre_adultes}
        Cliquer De Maniere Fiable    ${GUESTS_ADULT_PLUS_BUTTON}
    END
    Cliquer De Maniere Fiable    ${GUESTS_APPLY_BUTTON}

Soumettre La Demande De Réservation
    Cliquer De Maniere Fiable    ${REQUEST_RESERVATION_BUTTON}
    Wait Until Page Contains    ${CONFIRMATION_MESSAGE}    timeout=10s

Cliquer Sur Demande De Reservation
    Cliquer De Maniere Fiable    ${REQUEST_RESERVATION_BUTTON}

Initialiser Profil De Paiement
    [Arguments]    ${prenom}    ${nom}    ${adresse}    ${ville}    ${code_postal}
    Go To    ${BASE_URL}/index.php/profile/
    Cliquer De Maniere Fiable    ${PROFIL_PAIEMENT_MENU}
    Wait Until Element Is Visible    ${PRENOM_FIELD}    timeout=10s
    Input Text    ${PRENOM_FIELD}    ${prenom}
    Input Text    ${NOM_FIELD}    ${nom}
    Input Text    ${ADRESSE_FIELD}    ${adresse}
    Input Text    ${VILLE_FIELD}    ${ville}
    Input Text    ${CODE_POSTAL_FIELD}    ${code_postal}
    Cliquer De Maniere Fiable    ${VIREMENT_BANCAIRE_OPTION}
    Cliquer De Maniere Fiable    ${ENREGISTRER_BUTTON}
    Wait Until Page Contains    ${PROFIL_ENREGISTRE_MESSAGE}    timeout=10s

Ouvrir Les Reservations Hote
    Cliquer De Maniere Fiable    ${HOTE_RESERVATIONS_MENU}

Confirmer Premiere Demande Nouveau
    Cliquer De Maniere Fiable    ${CONFIRMER_BUTTON}

Confirmer Demande Pour Annonce
    [Arguments]    ${nom_annonce}
    ${locator}=    Format String    ${CONFIRMER_BUTTON_POUR_ANNONCE}    ${nom_annonce}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Cliquer De Maniere Fiable    ${locator}

Confirmer La Disponibilite
    Cliquer De Maniere Fiable    ${CONFIRMER_DISPONIBILITE_BUTTON}

Ajouter Des Frais
    [Arguments]    ${nom_frais}    ${valeur}
    Cliquer De Maniere Fiable    ${AJOUTER_FRAIS_BUTTON}
    Wait Until Element Is Visible    ${NOM_FIELD_GENERIC}    timeout=5s
    Input Text    ${NOM_FIELD_GENERIC}    ${nom_frais}
    Input Text    ${VALEUR_FIELD_GENERIC}    ${valeur}
    Cliquer De Maniere Fiable    ${ENREGISTRER_FRAIS_BUTTON}

Faire Une Remise
    [Arguments]    ${nom_remise}    ${valeur}
    Cliquer De Maniere Fiable    ${FAIRE_REMISE_BUTTON}
    Wait Until Element Is Visible    ${NOM_REMISE_FIELD}    timeout=5s
    Input Text    ${NOM_REMISE_FIELD}    ${nom_remise}
    Input Text    ${VALEUR_REMISE_FIELD}    ${valeur}
    Cliquer De Maniere Fiable    ${ENREGISTRER_REMISE_BUTTON}

Payer La Reservation
    Cliquer De Maniere Fiable    ${PAYER_MAINTENANT_BUTTON}
    Wait Until Element Is Visible    ${MARQUER_PAYE_ICON}    timeout=10s
    Cliquer De Maniere Fiable    ${MARQUER_PAYE_ICON}
    Wait Until Element Is Visible    ${CONFIRMER_MODALE_BUTTON}    timeout=10s
    Cliquer De Maniere Fiable    ${CONFIRMER_MODALE_BUTTON}
    Wait Until Page Contains    ${PAIEMENT_REUSSI_MESSAGE}    timeout=10s

Annuler La Reservation
    Cliquer De Maniere Fiable    ${DETAILS_BUTTON_RECENTE}
    Cliquer Sur Element Visible Parmi Plusieurs    ${ANNULER_BUTTON}
    Wait Until Element Is Visible    ${MOTIF_ANNULATION_FIELD}    timeout=10s
    Input Text    ${MOTIF_ANNULATION_FIELD}    Test automatisé - annulation
    Cliquer De Maniere Fiable    ${SOUMETTRE_ANNULATION_BUTTON}
    Wait Until Page Contains    ${ANNULATION_MESSAGE}    timeout=10s