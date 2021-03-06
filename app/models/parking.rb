class Parking < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :process_step, presence: true

  ROLES_PROCESS = {
    commercial: [
      "Appel client",
      "Prise de RDV",
      "Récupération des critères du parking",
      "Envoi du contrat",
      "Réception du contrat"
    ],
    operation: [
      "Création de la fiche parking dans le backoffice",
      "Call d’activation"
    ],
    marketing: ["Lancement campagne Adwords"]
  }
end