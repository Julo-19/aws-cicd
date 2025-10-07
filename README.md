# 🐍 Django AWS CI/CD App

Ce projet est une application Django déployée sur AWS à l'aide d'une pipeline CI/CD (intégration et déploiement continus). Il utilise les bonnes pratiques de développement moderne avec gestion d'environnement virtuel, automatisation, et hébergement cloud.

---

## 🚀 Fonctionnalités

- Application Django modulaire avec l’app `aws_cicd`
- Déploiement automatique sur AWS via CI/CD (ex : GitHub Actions, CodePipeline)
- Environnement virtuel isolé
- Serveur de développement intégré
- Prête pour la production avec configuration cloud

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