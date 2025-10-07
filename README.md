# 🐍 Django AWS CI/CD App

Ce projet est une application Django déployée sur AWS à l'aide d'une pipeline CI/CD (intégration et déploiement continus). Il utilise les bonnes pratiques de développement moderne avec gestion d'environnement virtuel, automatisation, et hébergement cloud.

---

## 🚀 Fonctionnalités


- Application Django structurée avec une app `aws_cicd`
- Déploiement automatique sur EC2 via CodePipeline
- Build & préparation du code via CodeBuild
- Déclenchement du pipeline à chaque `push` sur `main`
- Prêt pour la production : configuration extensible avec environnement virtuel, gestion des dépendances, etc.

--

---

## 🧰 Stack technique

- **Langage** : Python 3.x
- **Framework** : Django 5.2.7
- **CI/CD** : GitHub Actions / AWS CodePipeline *(à adapter selon ton setup)*
- **Hébergement** : AWS (EC2 / S3 / RDS / Elastic Beanstalk...)
- **Autres** : Virtualenv, Gunicorn, Nginx, Docker *(selon config)*

---

## 🛠️ Installation locale

### 1. Cloner le dépôt

```bash
git clone https://github.com/ton-utilisateur/nom-du-repo.git
cd nom-du-repo

2. Créer et activer l’environnement virtuel
Sous Windows :
python -m venv venv
venv\Scripts\activate

Sous macOS/Linux :
source venv/bin/activate

4. Installer les dépendances
pip install -r requirements.txt

5. Lancer le serveur local
python manage.py runserver


Accéder à l’application : http://127.0.0.1:8000

⚙️ Déploiement

Le déploiement automatique est déclenché via une pipeline CI/CD dès qu’un push est effectué sur la branche main.



## 📁 Structure du projet

aws-cicd/
├── aws_cicd/ # Application Django principale
│ ├── views.py
│ ├── urls.py
│ └── ...
├── monsite/ # Configuration principale Django
│ ├── settings.py
│ └── urls.py
├── buildspec.yml # Script d'exécution pour CodeBuild
├── appspec.yml # (Si tu utilises CodeDeploy)
├── scripts/ # Scripts de déploiement pour EC2
│ └── deploy.sh
├── manage.py
├── requirements.txt
└── README.md

✅ À faire

 Ajouter la configuration de base de données en production

 Ajouter un fichier .env pour les variables sensibles

 Configurer les fichiers statiques avec AWS S3

 Ajouter des tests automatisés à la pipeline

 Ajouter la documentation API (si applicable)

🧑‍💻 Auteur

Souleymane Keita BARRO (JULO)
🔗 [Lien https://souleymane-barro.tech/]
📧 [souleymanekeitabarro@gmail.com
]