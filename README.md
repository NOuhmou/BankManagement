# 🏦 Bank Management System

[![Java](https://img.shields.io/badge/Java-21%2B-orange)](https://www.java.com/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)](https://www.mysql.com/)
[![JDBC](https://img.shields.io/badge/JDBC-MySQL-green)](https://dev.mysql.com/doc/connector-j/en/)

## 📋 Description

**Bank Management System** est une application console Java qui simule un système bancaire complet.  
Ce projet est présenté en **deux versions** pour démontrer ma progression :

- **Version 1** : Gestion des données en mémoire (ArrayList)
- **Version 2** : Persistance des données avec MySQL et architecture DAO

---

## 🚀 Fonctionnalités

| Fonctionnalité | v1 (Mémoire) | v2 (MySQL) |
|----------------|:------------:|:----------:|
| Création de comptes | ✅ | ✅ |
| Dépôt / Retrait d'argent | ✅ | ✅ |
| Transfert entre comptes | ✅ | ✅ |
| Authentification (RIB + PIN) | ✅ | ✅ |
| Génération automatique RIB/PIN | ✅ | ✅ |
| Interface console | ✅ | ✅ |
| **Persistance des données** | ❌ | ✅ |
| **Architecture DAO** | ❌ | ✅ |
| **Transactions sécurisées** | ❌ | ✅ |

---

---

## 🛠️ Technologies utilisées

| Technologie | Version | Utilisation |
|-------------|---------|-------------|
| **Java** | 21 | Langage principal |
| **MySQL** | 8.0 | Base de données (v2) |
| **JDBC** | - | Connexion Java/MySQL |
| **XAMPP** | - | Serveur local MySQL |
| **Git & GitHub** | - | Versionnement |

---

## 📊 Concepts démontrés

### Programmation Orientée Objet (POO)
- ✅ Héritage (`Client extends Person`, `Employee extends Person`)
- ✅ Polymorphisme (interface `BankEntity`)
- ✅ Encapsulation (getters/setters)
- ✅ Classes abstraites (`Person`)

### Architecture et Design Patterns
- ✅ Pattern DAO (Data Access Object)
- ✅ Séparation des responsabilités (model, dao, db)
- ✅ Gestion centralisée des connexions

### Gestion des données
- ✅ Collections (ArrayList) - v1
- ✅ JDBC et requêtes préparées (PreparedStatement) - v2
- ✅ Transactions SQL - v2

### Gestion des erreurs
- ✅ Exceptions personnalisées
- ✅ Try-catch et try-with-resources
- ✅ Validation des entrées utilisateur

---

## 💻 Exemple d'exécution

```bash
===== MENU PRINCIPAL =====
1. Gérer les clients
2. Gérer les comptes
3. Transférer de l'argent
4. Afficher tous les comptes
0. Quitter

Votre choix : 1

--- GESTION DES CLIENTS ---
1. Ajouter un client
2. Lister tous les clients

Nom : Ahmed
Email : ahmed@mail.com
✅ Client ajouté avec succès !
````

## 👩‍💻 Auteur

**Najat Oudaoud ouhmou**  
🎓 Étudiante ingénieure en Sciences des Données, Big Data & IA  
🏫 ENSIASD - Taroudant

