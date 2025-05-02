# 🧙‍♂️ Cub3D - 𝔗𝔦𝔱𝔦 𝔗𝔞𝔱𝔞 𝔗𝔲𝔱𝔲 𝔗𝔬𝔱𝔬: The Quest for Randy Marsh

> Un projet 42 recréé en jeu d’aventure immersif, où vous incarnez un mage explorant des catacombes hantées par des ennemis loufoques et des secrets psychédéliques...

---


## 👥 Équipe
- Alexandre Lacroix
- Alexandre Gadea — https://github.com/algadea

## 📖 À propos

Cub3D est un mini moteur de raycasting inspiré de *Wolfenstein 3D*, développé dans le cadre du cursus 42.
Ce projet nous a permis d’apprendre les bases du **moteur de rendu 3D**, de la **gestion d’événements**, et de la **manipulation de textures** en C avec la MiniLibX.

Mais nous ne nous sommes pas arrêtés là.

### 🚀 Univers étendu

Nous avons transformé Cub3D en un **jeu d’aventure fantasy**, où vous incarnez un **mage aventurier**, armé d’un **bâton de sorcier** et d’une **épée magique**, explorant les catacombes à la recherche de **Randy Marsh**, devenu un **mage noir démoniaque**.

---

## ✨ Fonctionnalités

### ✅ Obligatoires (sujet 42)
- Moteur de raycasting fonctionnel (affichage 3D à partir d’une map 2D)
- Déplacement fluide (avant/arrière/gauche/droite + rotation)
- Collision avec les murs
- Parsing d’une carte au format `.cub`
- Textures personnalisables pour les murs et le sol/plafond
- MiniMap
- Gestion de la souris (bonus)

### 🔥 Bonus & améliorations
- **💊 Mode psychédélique** : un objet caché fait basculer l’univers dans une ambiance colorée et distordue
- **🧙‍♂️ Ennemis animés** : des **Randy Marsh** en mage noir vous pourchassent dans les catacombes
- **⚔️ Animations de combat** : sprites animés pour le bâton et l’épée
- **🌈 Sprites animés** : objets, ennemis et effets visuels dynamiques

---

## 🧠 Contrôles

- `W / A / S / D` : Déplacement
- `← / →` : Rotation gauche/droite
- `LEFT_MOUSE` : Lancer un sort
- `RIGHT_MOUSE` : Coup d'epée
- `E` : Interaction (ouvrir porte)
- `ECHAP` : Menu du jeu

---

## 🛠️ Installation

### Prérequis
- Système UNIX (Linux ou macOS)
- `make`, `gcc`, `MiniLibX`

### Cloner le dépôt
```bash
git clone https://github.com/votre-utilisateur/cub3d.git
cd cub3d
make
./cub3d maps/catacombs.cub

