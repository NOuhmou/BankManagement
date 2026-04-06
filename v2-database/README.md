# 🏦 Bank Management System - Version 2.0

[![Java](https://img.shields.io/badge/Java-21%2B-orange)](https://www.java.com/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)](https://www.mysql.com/)
[![JDBC](https://img.shields.io/badge/JDBC-MySQL-green)](https://dev.mysql.com/doc/connector-j/en/)

## 📋 Description

Version avancée du système bancaire avec **persistance des données** et architecture **DAO (Data Access Object)**.

[➡️ Voir la version 1 (mémoire)](../v1-memory/)

---

## ✨ Fonctionnalités

- 💾 **Persistance des données** : Sauvegarde dans MySQL
- 🏗️ **Architecture DAO** : Séparation modèle / accès aux données
- 🔐 **Transactions sécurisées** : Vérification des soldes avant transfert
- 🔌 **Connexion centralisée** : Gestion unique de la connexion JDBC
- ✅ Création de comptes avec RIB/PIN auto-générés
- ✅ Dépôt, retrait et transfert d'argent
- ✅ Authentification par RIB et PIN

---

## 🗄️ Base de données

**Nom** : `bank_db`

**Tables** :
- `clients` (id, nom, email)
- `comptes` (id, rib, pin, solde, client_id)

### Script SQL

```sql
CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE comptes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    rib VARCHAR(20) NOT NULL UNIQUE,
    pin VARCHAR(4) NOT NULL,
    solde DECIMAL(10,2) DEFAULT 0.00,
    client_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);
## 🛠️ Technologies utilisées

| Technologie | Rôle |
|-------------|------|
| Java 21 | Langage principal |
| MySQL 8.0 | Base de données |
| JDBC | Connexion Java/MySQL |
| XAMPP | Serveur local |

---

## 📊 Concepts démontrés

- ✅ Programmation Orientée Objet (héritage, polymorphisme, encapsulation)
- ✅ Pattern DAO (Data Access Object)
- ✅ JDBC et requêtes préparées (PreparedStatement)
- ✅ Gestion des exceptions personnalisées
- ✅ Try-with-resources pour fermeture automatique

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
```

---

## 🔧 Installation

### Prérequis

- Java JDK 21+
- XAMPP (MySQL)
- MySQL Connector/J

### Étapes

1. **Démarrer MySQL** dans XAMPP

2. **Créer la base de données** :
   ```bash
   mysql -u root -p
   SOURCE creation.sql;
   ```

3. **Ajouter le pilote JDBC** au projet (mysql-connector-j-8.0.33.jar)

4. **Configurer la connexion** dans `DatabaseConnection.java` :
   ```java
   String url = "jdbc:mysql://localhost:3306/bank_db?useSSL=false";
   String user = "root";
   String password = "";
   ```

5. **Exécuter** `Main.java`

---

## 📈 Améliorations par rapport à la version 1

| Aspect | Version 1 | Version 2 |
|--------|-----------|-----------|
| Persistance | ❌ Données volatiles | ✅ Données persistantes |
| Architecture | Monolithique | ✅ Pattern DAO |
| Transactions | Basique | ✅ Sécurisées |
| Évolutivité | Limitée | ✅ Extensible |

---

## 👩‍💻 Auteur

**Najat Ouda**  
🎓 Étudiante ingénieure en Sciences des Données, Big Data & IA  
🏫 ENSIASD - Taroudant

[![GitHub](https://img.shields.io/badge/GitHub-NOuhmou-black)](https://github.com/NOuhmou)

