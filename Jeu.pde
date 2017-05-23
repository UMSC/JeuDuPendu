//Code pour que le mot à trouver soit sélectionnéé au hasard
String choisirMot () { // Décalaration de la chaine de caractère qui permet de choisir un mot
  String mot=dico[int(random(dico.length))]; // Le mot est egal à un un mot du dictionnaire random qu'on convertit en int 
  println(mot); // Afficher le mot dans la console de processing
  return mot; // retourner la valeur du mot 
}

//Code pour savoir si les lettres cliques sont justes
//en donnant aux boutons leurs actions
void handleButtonEvents(GButton button, GEvent event) {
  if (button == E) { // Si le Bouton E est choisis 
    afficherLettre(getPositionLettre("E"), "E"); // Afficher la lettre et la mettre à la possition dans le mot. GetPositionLettre 
    clap.play(); // Faire jour le son d'applaudissement
  }
  if (button == A) {
    afficherLettre(getPositionLettre("A"), "A");
    text("A", 701, 550);
    clap.play();
  }
  if (button == B) {
    afficherLettre(getPositionLettre("B"), "B");
    text("B", 722, 550);
    clap.play();
  }
  if (button == C) {
    afficherLettre(getPositionLettre("C"), "C");
    text("C", 741,550);
    clap.play();
  }
  if (button == D) {
    afficherLettre(getPositionLettre("D"), "D");
    text("D", 760, 550);
    clap.play();
  }
  if (button == F) {
    afficherLettre(getPositionLettre("F"), "F");
    text("F", 800, 550);
    clap.play();
  }
  if (button == G) {
    afficherLettre(getPositionLettre("G"), "G");
    text("G", 817, 550);
    clap.play();
  }
  if (button == H) {
    afficherLettre(getPositionLettre("H"), "H");
    text("H", 839, 550);
    clap.play();
  }
  if (button == I) {
    afficherLettre(getPositionLettre("I"), "I");
    text("I", 861, 550);
    clap.play();
  }
  if (button == J) {
    afficherLettre(getPositionLettre("J"), "J");
    text("J", 867, 550);
    clap.play();
  }
  if (button == K) {
    afficherLettre(getPositionLettre("K"), "K");
    text("K", 873, 550);
    clap.play();
  }
  if (button == L) {
    afficherLettre(getPositionLettre("L"), "L");
    text ("L", 701, 582);
    clap.play();
  }
  if (button == M) {
    afficherLettre(getPositionLettre("M"), "M");
    text ("M", 720, 582);
    clap.play();
  }
  if (button == N) {
    afficherLettre(getPositionLettre("N"), "N");
    text("N", 745, 582);
    clap.play();
  }
  if (button == O) {
    afficherLettre(getPositionLettre("O"), "O");
    text("O", 767, 582);
    clap.play();
  }
  if (button == P) {
    afficherLettre(getPositionLettre("P"), "P");
    text("P", 790, 582);
    clap.play();
  }
  if (button == Q) {
    afficherLettre(getPositionLettre("Q"), "Q");
    text("Q", 807, 582);
    clap.play();
  }
  if (button == R) {
    afficherLettre(getPositionLettre("R"), "R");
    text("R", 831, 582);
    clap.play();
  }
  if (button == S) {
    afficherLettre(getPositionLettre("S"), "S");
    text("S", 851, 582);
    clap.play();
  }
  if (button == T) {
    afficherLettre(getPositionLettre("T"), "T");
    text("T", 869, 582);
    clap.play();
  }
  if (button == U) {
    afficherLettre(getPositionLettre("U"), "U");
    text("U", 701, 613);
    clap.play();
  }
  if (button == V) {
    afficherLettre(getPositionLettre("V"), "V");
    text("V", 723, 613);
    clap.play();
  }
  if (button == W) {
    afficherLettre(getPositionLettre("W"), "W");
    text("W", 748, 613);
    clap.play();
  }
  if (button == X) {
    afficherLettre(getPositionLettre("X"), "X");
    text("X", 776, 613);
    clap.play();
  }
  if (button == Y) {
    afficherLettre(getPositionLettre("Y"), "Y");
    text("Y", 797, 613);
    clap.play();
  }
  if (button == Z) {
    afficherLettre(getPositionLettre("Z"), "Z");
    text("Z", 819, 613);
    clap.play();
  }
}
//Code pour avoir la position de la lettre selectionnee
ArrayList<Integer> getPositionLettre(String c) {        
  int i=0; 
  ArrayList<Integer> pos=new ArrayList<Integer>();
  while (i < mot.length () && i != -1) {          
    i = mot.indexOf(c, i);
    if (i != -1) {
      pos.add(i);
      i++;
    }
  } 
  return pos;
}
//Code pour afficher la lettre juste
void afficherLettre(ArrayList<Integer> pos, String c) { 
  //si la lettre est fausse, la position ne renvoie rien.
  //Il faut aussi que la lettre ne soit pas cliques 2 fois, qu'elle 
  //n'apparaisse pas deux fois dans la chaine lettres.
  if (pos.isEmpty() && !mauvaiseslettres.contains(c)) { // Si la position est Empty = vide  et qu'on selectionne la mauvaise lettre qui est contenus dans la chaine de caractère c
    badcoup++; // On rajoute 1 dans le badcoup
    perdu(); // 
    mauvaiseslettres += c; 
  } else { // sin on 
    for (int position : pos) {
      fill(0); // Noir
      text(c, 148+position*28.2, 318); // on multiplie la position de la lettre par 28.2 afin d'obtenir le code qui est au dessus des pointilles
      bonnesLettres+=c; 
      isWin();
    }
  }
}

//Apparition des formes du pendu a  chaque mauvais coups
//et appaition de l'image Perdu
void perdu() {
  ping.loop(10);
  if (badcoup==1) {
    line(870, 415, 680, 415);
    ping.play();
  }
  if (badcoup==2) {
    line(700, 130, 700, 415);
    ping.play();
  }
  if (badcoup==3) {
    line(870, 130, 681, 130);
    ping.play();
  }
  if (badcoup==4) {
    line(750, 130, 700, 190);
    ping.play();
  }
  if (badcoup==5) {
    line(820, 130, 820, 180);
    ping.play();
  }
  if (badcoup==6) {
    fill(255);
    ellipse(820, 200, 40, 45);
    fill(0);
    ping.play();
  }
  if (badcoup==7) {
    line(820, 222, 820, 290);
    ping.play();
  }
  if (badcoup==8) {
    line(820, 290, 785, 350);
    ping.play();
  }
  if (badcoup==9) {
    line(820, 290, 860, 350);
    ping.play();
  }
  if (badcoup==10) {
    line(820, 235, 775, 270);
    ping.play();
  }
  if (badcoup==11) {
    line(820, 235, 865, 270);
    fill(255, 255, 255, 255);
    PImage imgPerdu;
    imgPerdu = loadImage("perdu.jpg");
    image(imgPerdu, 90, 180);
  }
}

void isWin() {
  if ( bonnesLettres.length() == mot.length()) {
    PImage imgGagne;
    imgGagne = loadImage("gagne.jpg");
    image(imgGagne, 90, 180);
    fill(255, 255, 255, 255);
  }
}
void stop(){
   
  ping.close();
  clap.close();
  minim.stop();
  super.stop();

}