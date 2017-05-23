import g4p_controls.*; // Importation de la librarie G4P depuis le menu Sketch puis importer une libraire
import ddf.minim.*; // Importation de la librairie Minimaudio afin de mettre du son dans notre pendu avec une synthaxe que Processing comprendra sinon, s'il n'y a pas d'import, alors il y'aura des erreurs
import ddf.minim.analysis.*; // Rappel!! Les imports permettent de minimiser le code, sans cela, on devrait écrire de  longue fonction comme indiqué dans la Doc de la Librairie MinimAudio
import ddf.minim.effects.*; // Importation de la librairie Minimaudio afin de mettre du son dans notre pendu avec une synthaxe que Processing comprendra sinon, s'il n'y a pas d'import, alors il y'aura des erreurs
import ddf.minim.signals.*;// Rappel!! Les imports permettent de minimiser le code, sans cela, on devrait écrire de  longue fonction comme indiqué dans la Doc de la Librairie MinimAudio
import ddf.minim.spi.*; // Importation de la librairie Minimaudio afin de mettre du son dans notre pendu avec une synthaxe que Processing comprendra sinon, s'il n'y a pas d'import, alors il y'aura des erreurs
import ddf.minim.ugens.*; // Rappel!! Les imports permettent de minimiser le code, sans cela, on devrait écrire de  longue fonction comme indiqué dans la Doc de la Librairie MinimAudio

GButton A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R,   // Déclaration des différents buttons grace à GButton qui est une fonction intégré par la librairie G4P
S, T, U, V, W, X, Y, Z; // Ces buttons permettent d'être séléctionnés afin qu'on puisse jouer avec et qu'il soir pris en compte. Attention, si l'on met des lettre en minuscule dans le jeu, le jeu ne comprendra 
//pas les boutons car on les a définis en Majuscule
// Déclaration des variables qui vont être utilisés tout au long du programme
String mot;  // qui va permettre de charger les mots qu'on aura mis dans le dictionnaire
String[] dico; // Déclaration de la chaine de caractère qui permettre de charger les mots du dictionnaire
int badcoup=0; // Décaration dun entier int = 0 car lorsqu'on commence la partie, on doit avoir 0 mauvais coup vus qu'on aura toucher aucune touches
PImage imgPerdu; // Permet d'ajouter l'image perdu qu'on a glissé avant dans le fichier Data afin qu'il puisse être lus lors de la défaite à la ligne 198 du programme Jeu où l'image est chargé 
PImage imgGagne; // Permet d'ajouter l'image gagné qu'on a glissé avant dans le fichier Data afin qu'il puisse être lus lors de la victoire à la ligne  209 du programme Jeu où l'image est chargé
String mauvaiseslettres=""; // Chaine de caractère qui permet de postitioner les mauvaise lettres dans l'encadrés en bas. Si on enlève ça, on ne peut plus cliquer sur les mauvais lettres et donc pas de bohnome
String bonnesLettres="";// Chaine de caractère qui permet de positionner les bonnes lettres dans le mots. 
Minim minim; // création d'un objet de la classe Minim 
AudioPlayer ping; //  AudioPlayer permet de contenir les données audio afin que par la suite il puisse être chargé. Il chargera le buit de ping.mp3 donc le BRUH
AudioPlayer clap; //  AudioPlayer permet de contenir les données audio afin que par la suite il puisse être chargé. Il chargera le bruit du clap.mp3 donc les applaudissement
// Fonction qui permet de définir l'écran du jeu car depuis la version processing 3, le void setup ne prend plus en compte le size()
void settings(){ // On définit cette fonction afin de définir l'écran du jeu car depuis processing 3, le void setup()ne prend plus en compte le size()
  size(1000,700); // Définition de la taille de l'écran du jeu du Pendu
}
void setup(){ // On définit cette focntione pour avoir l'affichage du jeu et avoir un contenu coloré et organisé
  background(#E6E1ED); // Permet de mettre un fond d'écran entre le beige et le jaune
  strokeWeight(1.5); // Permet d'avoir des contours plus noir autour de chaque carré comme celui du titre
  dico = Dico(); // Ici dico = Dico() donc la chaine de caractère dico peut s'écrire Dico()
  clavier(); // Permet d'ajouter une fonction clavier pour le creer  
  graphisme(); // Permet d'ajouter une fonction graphisme pour le creer 
  mot = choisirMot(); // Permer que la variable mot soit égale à choisirMot 
  afficherMotCache(mot); // Pemet de définir une fonction void avec la chaine de caractère string pour que le mot soit caché
  minim = new Minim(this);  // Permet de crée une variable minim afin d'ajouter le son. Sans cette variable aucun son ne marche. 'this' fait référence à l'application en cours 
  ping = minim.loadFile("ping.mp3"); // Permet de charger le son .mp3 qui se trouve dans le fichier data
  clap = minim.loadFile("clap.mp3"); // Permet de charger le son .mp3 qui se trouve dans le fichier data
  }
void draw() { // si on eleve ça il n'y aura ni le clavier ni les mots en pointilles
}  