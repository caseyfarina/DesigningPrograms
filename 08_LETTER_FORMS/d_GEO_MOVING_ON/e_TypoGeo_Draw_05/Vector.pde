class FontAgent {

  // PVector est une classe propre à Processing
  // qui contient des informations pour la position
  // éventuellement la vélocité > vecteur vitesse
  // http://fr.wikipedia.org/wiki/Vitesse#Vecteur-vitesse
  PVector loc;
  PVector vel;
  int dia;

  // Notre constructeur permet d'initialiser notre objet > instance d'une classe
  // http://www.commentcamarche.net/contents/553-java-constructeurs
  FontAgent(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(0.0, 0.0);
    dia = 10;
  }

  // Méthode pour dessiner la forme
  void render(float d) {
    fill(255,0,255, 173);
    noStroke(); 
    ellipse(loc.x, loc.y, dia+d, dia+d);
  }

  // Méthode pour bouger la forme
  // grâce à notre vecteur vélocité.
  void update() {
    loc.add(vel);
  }
  /*
  
   
   
   void check() {
   if(loc.x > width) {
   loc.x = 0;
   } 
   if(loc.x < 0) {
   loc.x = width;
   } 
   
   if(loc.y > height) {
   loc.y = 0;
   } 
   if(loc.y < 0) {
   loc.y = height;
   } 
   }
   */
}

