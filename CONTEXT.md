# PolicyBridge — Annuaire d'experts

Annuaire statique (HTML/CSS/JS, sans backend) permettant à un visiteur de trouver un expert par domaine, pays, langue et disponibilité.

## Language

**Catégorie de filtre**:
Un des groupes de critères structurés proposés sur `experts.html` — Domaine, Pays, Langue ou Disponibilité. Chaque catégorie affiche son propre libellé et son propre ensemble de boutons.
_Avoid_: Filtre (trop ambigu — désigne tantôt une catégorie, tantôt une valeur, tantôt le système entier)

**Valeur de filtre**:
Une option sélectionnable à l'intérieur d'une catégorie de filtre, représentée par un bouton (ex. "Sénégal" dans la catégorie Pays, "NLP" dans la catégorie Domaine). Les valeurs d'une catégorie sont dérivées directement des chaînes exactes présentes dans `data.js` pour cette catégorie, sans regroupement ni normalisation.
_Avoid_: Option, tag, bouton de filtre

**Filtre actif**:
Une valeur de filtre actuellement sélectionnée par le visiteur dans une catégorie donnée. Plusieurs filtres actifs dans la même catégorie se combinent en OR (un expert correspond s'il a au moins une des valeurs actives) ; les filtres actifs de catégories différentes se combinent en AND.
_Avoid_: Sélection

**Pays**:
La valeur de la catégorie de filtre "Pays" pour un expert, dérivée du champ `localisation` (dernier segment après la dernière virgule, ou la chaîne entière si aucune virgule n'est présente). Le Pays n'est jamais stocké dans `data.js` — c'est une valeur calculée à la volée, distincte de `localisation` qui reste la chaîne complète "Ville, Pays" utilisée telle quelle par la recherche texte.
_Avoid_: Localisation (c'est le champ source complet "Ville, Pays", pas la catégorie de filtre)
