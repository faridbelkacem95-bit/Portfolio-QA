# resources/locators.py
# Sélecteurs centralisés pour l'automatisation IHM - Homey

# --- Page d'accueil / Header ---
LOGIN_LINK = "css:a[data-target='#modal-login']"

# --- Modale de connexion ---
LOGIN_USERNAME_FIELD = "css:input[name='username']"
LOGIN_PASSWORD_FIELD = "css:input[name='password']"
LOGIN_SUBMIT_BUTTON = "css:.homey_login_button"

# --- Tableau de bord (après connexion) ---
DASHBOARD_URL_FRAGMENT = "dashboard"
DASHBOARD_WELCOME_TEXT = "Bon retour parmi nous"

# --- Page annonce / Formulaire de demande de réservation ---
DATE_ARRIVE_FIELD = "css:input[name='arrive']"
DATE_DEPART_FIELD = "css:input[name='depart']"
CALENDAR_DAY_BY_DATE = "css:#single-booking-search-calendar li[data-formatted-date='{}']"
CALENDAR_CONTAINER = "id:single-booking-search-calendar"
CALENDAR_NEXT_MONTH_BUTTON = "css:.listing-cal-next"

GUESTS_FIELD = "css:input[name='guests']"
GUESTS_ADULT_PLUS_BUTTON = "css:.adult_plus"
GUESTS_ADULT_MINUS_BUTTON = "css:.adult_minus"
GUESTS_ADULT_COUNT = "css:.quantity-calculator.homey_adult"
GUESTS_APPLY_BUTTON = "css:.apply_guests"

REQUEST_RESERVATION_BUTTON = "id:request_for_reservation"
CONFIRMATION_MESSAGE = "Demande de réservation envoyée. Veuillez attendre la confirmation!"

# --- Annonce de test dédiée à US-07 ---
URL_ANNONCE_TEST = "http://livraison3.testacademy.fr/index.php/listing/georgeus-villa-in-the-woods/"

# =====================================================================
# --- US-08 : Espace Hôte - Réservations ---
# =====================================================================

HOTE_RESERVATIONS_MENU = "css:a[href*='reservations']"
CONFIRMER_BUTTON = "xpath://a[normalize-space(text())='Confirmer']"
CONFIRMER_DISPONIBILITE_BUTTON = "css:button.confirm-offsite-reservation"
REFUSER_BUTTON = "css:#decline-reservation-btn"

AJOUTER_FRAIS_BUTTON = "css:#body-area > div.user-dashboard-right.dashboard-with-sidebar > aside > button:nth-child(4)"
FAIRE_REMISE_BUTTON = "css:#body-area > div.user-dashboard-right.dashboard-with-sidebar > aside > button:nth-child(5)"
NOM_FIELD_GENERIC = "css:#modal-extra-expenses div.modal-body > div:nth-child(2) > input"
VALEUR_FIELD_GENERIC = "css:#modal-extra-expenses div.modal-body > div:nth-child(3) > input"
NOM_REMISE_FIELD = "css:#modal-discount div.modal-body > div:nth-child(2) > input"
VALEUR_REMISE_FIELD = "css:#modal-discount div.modal-body > div:nth-child(3) > input"
AJOUTER_PLUS_FRAIS_BUTTON = "css:#add_more_expense"
ENREGISTRER_FRAIS_BUTTON = "css:#save_expenses"
AJOUTER_PLUS_REMISE_BUTTON = "css:#add_more_discount"
ENREGISTRER_REMISE_BUTTON = "css:#save_discounts"
ENREGISTRER_BUTTON = "xpath://button[normalize-space(text())='Enregistrer']"

# --- US-08 : ciblage précis par annonce (conservé pour usage futur si besoin) ---
CONFIRMER_BUTTON_POUR_ANNONCE = "xpath://a[normalize-space(text())='Confirmer']"

# --- US-08 : Profil de paiement Hôte (sélecteurs confirmés dans le DOM réel) ---
PROFIL_PAIEMENT_MENU = "link:Paiement"
PRENOM_FIELD = "id:ben_first_name"
NOM_FIELD = "id:ben_last_name"
ADRESSE_FIELD = "id:ben_street_address"
VILLE_FIELD = "id:ben_city"
CODE_POSTAL_FIELD = "id:ben_zip_code"
VIREMENT_BANCAIRE_OPTION = "xpath://input[@name='payout_method' and @value='wire']/ancestor::label[1]"
PROFIL_ENREGISTRE_MESSAGE = "Félicitations"

# --- US-08 : Paiement côté Voyageur ---
PAYER_MAINTENANT_BUTTON = "xpath://a[contains(text(),'Payez maintenant')] | //button[contains(text(),'Payez maintenant')]"
MARQUER_PAYE_ICON = "css:a.mark-as-paid"
CONFIRMER_MODALE_BUTTON = "xpath://button[normalize-space(text())='Confirmer']"
PAIEMENT_REUSSI_MESSAGE = "Bien joué"

# --- US-08 : Annulation ---
DETAILS_BUTTON_RECENTE = "css:.dashboard-reservation-table tbody tr:nth-child(1) td:nth-child(11) a"
ANNULER_BUTTON = "css:#cancel-reservation-btn"
MOTIF_ANNULATION_FIELD = "css:#reason"
SOUMETTRE_ANNULATION_BUTTON = "css:#cancelled"
ANNULATION_MESSAGE = "ANNULÉ"

# --- Déconnexion ---
LOGOUT_LINK = "link:Se déconnecter"