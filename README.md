🚀 Terraform Azure Test Project

Dit project is een hands-on testomgeving voor het deployen van Azure resources met Terraform, inclusief een Container App in een VNET, gekoppeld aan Log Analytics en public ingress HTTP.

Projectstructuur

main.tf → Hoofdconfiguratie van resources

providers.tf → Providers en backend configuratie

variables.tf → Variabelen voor het project

outputs.tf → Outputs zoals de URL van de container app

README.md → Projectdocumentatie

📌 Fase 0 — Voorbereiding

Doelen:

Terraform lokaal installeren

Azure login configureren

Projectstructuur aanmaken

Git repository opzetten

Service Principal maken (voor toekomstige CI/CD)

Klaar als:
Terraform kan worden geïnitialiseerd en toegepast op een lege configuratie.

📌 Fase 1 — Resource Group + Remote State

Doelen:

Resource Group deployen

Storage Account voor Terraform state aanmaken

Remote backend configureren

Klaar als:
Terraform gebruikt de remote state in plaats van lokale .tfstate bestanden.

📌 Fase 2 — Networking + Monitoring

Doelen:

Virtual Network en minimaal één subnet deployen

Log Analytics Workspace deployen

To-do:

Variabelen netjes definiëren (naming convention)

Outputs toevoegen voor subnet ID en workspace ID

Klaar als:
Resources zijn zichtbaar in Azure en Terraform output geeft de juiste values.

📌 Fase 3 — Container Registry (ACR)

Doelen:

Azure Container Registry deployen (optioneel)

Publieke container image gebruiken (bv. Docker Hub)

To-do:

Container image instellen via variabele

Role assignments voorlopig niet nodig

Klaar als:
De image variabele werkt in Terraform en resources zijn zichtbaar in Azure.

📌 Fase 4 — Azure Container Apps

Doelen:

Container App deployen in het subnet

Environment koppelen aan Log Analytics

Public ingress HTTP configureren

Auto-scaling configureren (1–3 replicas)

Klaar als:

Webapplicatie is bereikbaar via een URL

Logging is zichtbaar in Log Analytics

📌 Fase 5 — Cleanup + Polish

Doelen:

Code overzichtelijk en consistent maken

README documentatie afronden

Variabelen documenteren

Diagram toevoegen

Klaar als:

Terraform destroy werkt succesvol
