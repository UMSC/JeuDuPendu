//graphiqme du jeu
void graphisme() {  
  //case lettres utilisÃ©es
  rect(700, 520, 200, 100, 9); // rectangle du bas à droite pour ajuster 
// 700 = décalage sur l'axe des x
// 520 = Axe y
// 200  et 100 = Taille longueur et largeur du carré 
// 9 = Contours
  //case titre + titre
  rect(100, 50, 400, 100, 9); 
  fill(0, 0, 0); // Couleur RVB NOIR et BLANC = 255
  textSize(35); // Permet d'ajuster la taille de l'écriture des lettres et des pointilles. Si on diminue risque de ne plus rien voir car les ecritures seront petites comme les pointillés
  text("Le Jeu du Pendu", 170, 112); // Cela permet d'afficher le titre du jeu en haut des pointilles 170= Axe x  112= Axe y
  //case pendu
  fill(255); // Couleur rectangle bonhomme dessiner RVB Blanc
  rect(650, 67, 300, 400, 9); // rectangle qui permet d'afficher le bonhomme
// 650 = décalage sur l'axe des x
// 67 = Axe y
// 300  et 400 = Taille longueur et largeur du carré 
// 9 = Contours
}

//clavier
void clavier() { 
  A = new GButton(this, 70, 510, 40, 40, "A"); // Permet d'ajouter le bouton A avec la fonction GBUTTON. this permet de charger la touche. 
  // 70 =Décalage vers l'axe X
  // 510 = Décalage vers l'axe Y
  //40 et 40 = Taille et longueur du bouton
  B = new GButton(this, 380, 610, 40, 40, "B");
  C = new GButton(this, 280, 610, 40, 40, "C");
  D = new GButton(this, 190, 560, 40, 40, "D");
  E = new GButton(this, 170, 510, 40, 40, "E");
  F = new GButton(this, 240, 560, 40, 40, "F");
  G = new GButton(this, 290, 560, 40, 40, "G");
  H = new GButton(this, 340, 560, 40, 40, "H");
  I = new GButton(this, 420, 510, 40, 40, "I");
  J = new GButton(this, 390, 560, 40, 40, "J");
  K = new GButton(this, 440, 560, 40, 40, "K");
  L = new GButton(this, 490, 560, 40, 40, "L");
  M = new GButton(this, 130, 610, 40, 40, "M");
  N = new GButton(this, 430, 610, 40, 40, "N");
  O = new GButton(this, 470, 510, 40, 40, "O");
  P = new GButton(this, 520, 510, 40, 40, "P");
  Q = new GButton(this, 90, 560, 40, 40, "Q");
  R = new GButton(this, 220, 510, 40, 40, "R");
  S = new GButton(this, 140, 560, 40, 40, "S");
  T = new GButton(this, 270, 510, 40, 40, "T");
  U = new GButton(this, 370, 510, 40, 40, "U");
  V = new GButton(this, 330, 610, 40, 40, "V");
  W = new GButton(this, 180, 610, 40, 40, "W");
  X = new GButton(this, 230, 610, 40, 40, "X");
  Y = new GButton(this, 320, 510, 40, 40, "Y");
  Z = new GButton(this, 120, 510, 40, 40, "Z");
}

//code pour que le mot à  trouver soit caché par des pointillés
void afficherMotCache(String mot) { // Fonction qui permet d'afficher le mot cacher dans 
  int nb_lettres = mot.length(); // Le nombre de lettre est égale à la longueur du mot qui sera mise sous pointillé
  String inconnu = ""; // Décalaration de la chaine de carractère qui permet de cacher les mots par pointillés. Si on met un String= "a" alors le mot commencera par un A
  fill(0); // Permet de mettre les pointilles en noir 
  for (int i=0; i<mot.length (); i++) { // Pour i = 0 i inférieur au nombre de lettre dans le mot et rajouter +1 au i 
    inconnu += "_ "; //  Inconnu = + un pointillé pour chaque lettre dans le mot, c'est à dire pour chaque i
  }
  text(inconnu, 150, 320); // Le nombre de pointillé sera mis aux coordonnés X = 150 et Y = 132
}