# Airbnbdogs

Faire le backEnd d'unn airbnb dogs

## Modèles
* DogSitter : personne qui promène les chiens (attributs => nom + ville)
* Dog : un chien (attributs => nom + ville)
* Stroll : l'action de promedande (attributs => dogsitter + Dog + ville )
* StrollHasDogs : table de jointure car dans un stroll on peut avoir plusieurs dogs (attributs => Stroll + Dog)
* City : ville (attribut => nom de la ville)
