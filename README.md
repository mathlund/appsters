# FrameCloud version 2.0 / Appsters

Denne version er en tilpasning af det generiske FrameCloud-infrastrukturframework, specifikt målrettet startup-virksomheden Appsters. Version 2.0 bygger videre på det dokumenterede fundament i version 1.0 og inkluderer deployment af virtuelle maskiner, netværkssegmentering og rollebaseret adgangskontrol via Azure AD.

## 📌 Formål

Formålet med denne version er at demonstrere, hvordan et generisk og skalerbart cloud-framework kan tilpasses en konkret virksomheds behov. Det er udviklet med fokus på:

- Automatisering via Terraform
- Sikkerhed og netværksadskillelse (NSG, subnet)
- Overholdelse af principper som least privilege og overvågning
- Klar dokumentation og fleksibel struktur for genanvendelse

## 🏢 Om Appsters

Appsters er en fiktiv startup med fokus på udvikling af mobilapps. Virksomheden har behov for:

- En frontend-server (Windows VM)
- En backend-server (Windows VM)
- Netværkssegmentering mellem frontend, backend og database
- Adgangsstyring via Azure AD roller (admins og devs)
- Automatisk backup og overvågning

## 📁 Filstruktur

appsters/
│
├── main.tf # Ressourcegruppe, VNet og subnets
├── variables.tf # Variabler anvendt i alle filer
├── terraform.tfvars # Konkrete værdier til version 2.0
│
├── nsg_association.tf # NSG bindinger til subnets
├── monitoring.tf # Diagnostic settings
├── backup.tf # Recovery Services Vault
│
├── iam.tf # AD-grupper og role assignments
├── nic.tf # Netværksinterfaces til VMs
├── vm.tf # Virtuelle maskiner
│
├── outputs.tf # Outputs fra deployment
├── providers.tf # Provider-konfiguration (Azure og AzureAD)
├── .gitignore # Ekskludering af følsomme eller store filer

## ⚙️ Krav

- Terraform CLI
- Azure-abonnement med tilstrækkelige rettigheder
- AzureAD-tilknyttet konto
- Git til versionsstyring

## 🚀 Deployment

Kør følgende kommandoer fra projektmappen:

```bash
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
