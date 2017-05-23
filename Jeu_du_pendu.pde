//Dictionnaire de mots à trouver
String[] Dico() { // On définit une chaine de caractère String pour qu'on puisse avoir un dictionnaire. Ne pas changer Dico sinon lil y'aura une ereeur avec la déclaration de la variable "dico = Dico();"
//ligne 27 Pendu22
  String dico[] = loadStrings("data/mots.txt"); // Ici on dit que la chaine de caractère est egale aux fichier que l'on doit charger, 
//c'est à dire mots.txt qu'on a mis dans le fichier data afin qu'il puisse lire les mots du dictionnaire à l'intérieur
  return dico; // Ici on returne simplement la valeur du dico car il faut retourner la méthode du type String que l'on a mis juste en haut
}