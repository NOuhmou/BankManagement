# 🏦 Bank Management System

[![Java](https://img.shields.io/badge/Java-21%2B-orange)](https://www.java.com/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)](https://www.mysql.com/)
[![JDBC](https://img.shields.io/badge/JDBC-MySQL-green)](https://dev.mysql.com/doc/connector-j/en/)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)

## 📋 Description

**Bank Management System** est une application console Java qui simule un système bancaire complet.  
Ce projet a été développé dans le cadre de mon apprentissage de Java et des bases de données.  
Il est présenté en **deux versions** pour démontrer ma progression :

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

### Exemple de transfert d'argent

```bash
--- TRANSFERT D'ARGENT ---
RIB source : 100000000000001
RIB destination : 100000000000002
Montant à transférer : 500

✅ Transfert de 500.0 DH effectué
   De: 100000000000001 vers: 100000000000002
```

---

## 🔧 Installation et exécution

### Version 1 (Mémoire)

```bash
cd v1-memory/src
javac bank/Main.java
java bank.Main
```

### Version 2 (Base de données)

#### Prérequis

| Logiciel | Lien |
|----------|------|
| Java JDK 21+ | [Oracle](https://www.oracle.com/java/technologies/downloads/) |
| XAMPP | [Apache Friends](https://www.apachefriends.org/) |
| MySQL Connector/J | [MySQL](https://dev.mysql.com/downloads/connector/j/) |

#### Étapes d'installation

**1. Installer XAMPP et démarrer MySQL**
```bash
# Démarrer MySQL dans XAMPP Control Panel
# Vérifier que le port 3306 est actif
```

**2. Créer la base de données**
```bash
# Via phpMyAdmin ou terminal MySQL
mysql -u root -p
SOURCE v2-database/creation.sql;
```

**3. Ajouter le pilote JDBC au projet**
```bash
# Télécharger mysql-connector-j-8.0.33.jar
# Ajouter au Build Path du projet Eclipse
```

**4. Configurer la connexion**
```java
// Dans DatabaseConnection.java
private static final String URL = "jdbc:mysql://localhost:3306/bank_db?useSSL=false";
private static final String USER = "root";
private static final String PASSWORD = "";
```

**5. Exécuter l'application**
```bash
cd v2-database/src
javac bank/Main.java
java bank.Main
```

---

## 📈 Améliorations par rapport à la version 1

| Aspect | Version 1 (Mémoire) | Version 2 (MySQL) |
|--------|---------------------|-------------------|
| **Persistance** | ❌ Données volatiles | ✅ Données persistantes |
| **Architecture** | Monolithique | ✅ Pattern DAO |
| **Connexion DB** | ❌ Sans | ✅ JDBC |
| **Transactions** | Basique | ✅ Sécurisées |
| **Évolutivité** | Limitée | ✅ Extensible |
| **Maintenabilité** | Moyenne | ✅ Élevée |

---

## 📊 Ce que cette progression démontre

1. ✅ Compréhension des bases de Java
2. ✅ Maîtrise de la Programmation Orientée Objet
3. ✅ Capacité à ajouter une base de données
4. ✅ Adoption d'architectures professionnelles (DAO)
5. ✅ Persévérance et apprentissage continu

---

## 🎯 Compétences démontrées

| Catégorie | Compétences |
|-----------|-------------|
| **Java** | POO, exceptions, collections, JDBC |
| **Base de données** | MySQL, SQL (DDL, DML), relations |
| **Architecture** | Pattern DAO, séparation des couches |
| **Outils** | Eclipse, Git, GitHub, XAMPP |
| **Bonnes pratiques** | Try-with-resources, PreparedStatement, encapsulation |

---

## 📈 Progression personnelle

| Étape | Date | Acquisition |
|-------|------|-------------|
| Version 1 | Mars 2026 | Bases de Java, POO, collections |
| Version 2 | Avril 2026 | MySQL, JDBC, DAO, architecture professionnelle |

---

## 👩‍💻 Auteur

**Najat Ouda**  
🎓 Étudiante ingénieure en Sciences des Données, Big Data & IA  
🏫 ENSIASD - Taroudant

[![GitHub](https://img.shields.io/badge/GitHub-NOuhmou-black)](https://github.com/NOuhmou)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Najat_Ouda-blue)](https://linkedin.com/in/ton-profil)

---

## 📅 Informations

- **Date du projet** : Mars - Avril 2026
- **Version** : 2.0 (avec base de données)
- **Licence** : MIT

---

## 🔮 Améliorations futures possibles

- [ ] Ajouter l'historique des transactions
- [ ] Créer une interface graphique (JavaFX)
- [ ] Ajouter des comptes épargne avec intérêts
- [ ] Mettre en place des tests unitaires (JUnit)
- [ ] Sécuriser les mots de passe avec hashage
- [ ] Exporter les relevés bancaires en PDF

---

⭐ **Si ce projet vous intéresse, n'hésitez pas à laisser une étoile !**
```

---

