class ShapeFactory {

  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;
  PShape enemyTwo;
  PShape enemyThree;

  int basicBulletRadius;
  int basicEnemyRadius;
  int basicPlayerRadius;

  ShapeFactory() {
    noStroke();
    buildBasicBullet();
    buildBasicPlayer();
    buildBasicEnemy();
    buildEnemyTwo();
    buildEnemyThree();
  }

  PShape getBasicBullet() { 
    return basicBullet;
  }
  PShape getBasicPlayer() { 
    return basicPlayer;
  }
  PShape getBasicEnemy() { 
    return basicEnemy;
  }
  PShape getEnemyTwo() { 
    return enemyTwo;
  }
  PShape getEnemyThree() { 
    return enemyThree;
  }

  int getBasicBulletRadius() { 
    return basicBulletRadius;
  }
  int getBasicEnemyRadius() { 
    return basicEnemyRadius;
  }  
  int getBasicPlayerRadius() { 
    return basicPlayerRadius;
  }

  void buildBasicBullet() {
 basicBulletRadius = 30;
    basicBullet = createShape(ELLIPSE, 10, 5, -5, -10);
    basicBullet.setStroke(color(255, 0, 0));
    basicBullet.setStrokeWeight(4);
    basicBullet.setFill(color(255, 0, 0));
  }

  void buildBasicPlayer() {
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.fill(255);
    chassis.stroke(255);
    chassis.vertex(-30, -40);
    chassis.vertex(-30, -10);
    chassis.vertex(-10, -40); 
    chassis.vertex(0, -80);
    chassis.vertex(10, -40);
    chassis.vertex(30, -10);
    chassis.vertex(30, -40);
    chassis.vertex(30, -10);
    chassis.vertex(0, -30);
    chassis.vertex(-30, -10);  
    chassis.endShape();
    PShape Cockpit = createShape();
    Cockpit.beginShape();
    Cockpit.fill(0, 255, 255);
    Cockpit.vertex(8, -50);
    Cockpit.vertex(-8, -50);
    Cockpit.vertex(0, -30);
    Cockpit.vertex(8, -50);
    Cockpit.endShape();
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(Cockpit);
  }

  void buildBasicEnemy() {
    basicEnemyRadius = 40;
    basicEnemy = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.fill(152, 152, 152);
    chassis.vertex(10, -60);
    chassis.vertex(-10, -60);
    chassis.vertex(-10, -75);
    chassis.vertex(-20, -75);
    chassis.vertex(-20, -60);
    chassis.vertex(-30, -60);
    chassis.vertex(0, 50);
    chassis.vertex(30, -60);
    chassis.vertex(20, -60);
    chassis.vertex(20, -75);
    chassis.vertex(10, -75);
    chassis.vertex(10, -60);
    PShape Cockpit = createShape();
    Cockpit.beginShape();
    Cockpit.fill(112, 112, 112);
    Cockpit.vertex(5, -60);
    Cockpit.vertex(5, -50);
    Cockpit.vertex(15, -50);
    Cockpit.vertex(15, -40);
    Cockpit.vertex(-15, -40);
    Cockpit.vertex(-15, -50);
    Cockpit.vertex(-5, -50);
    Cockpit.vertex(-5, -60);
    Cockpit.endShape();
    basicEnemy.addChild(chassis);
    basicEnemy.addChild(Cockpit);
    chassis.endShape();
    basicEnemy.scale(.5);
  }

  void buildEnemyTwo() {
    enemyTwo = createShape(GROUP);
    fill(115, 20, 240); //purple
    PShape chassis = createShape(ELLIPSE, -90, -40, 180, 80);
    fill(20, 200, 255); //light blue
    PShape dome1 = createShape(ARC, -50, -15, 100, 30, 0, PI);
    PShape dome2 = createShape(ARC, -50, -50, 100, 100, PI, TWO_PI);
    enemyTwo.addChild(chassis);
    enemyTwo.addChild(dome1);
    enemyTwo.addChild(dome2);
    enemyTwo.scale(.3);
  }

  void buildEnemyThree() {
    enemyThree = createShape(GROUP);
    fill(245, 12, 82); //more of a red
    PShape chassis = createShape(ELLIPSE, -90, -40, 180, 80);
    fill(245, 207, 12); //light blue
    PShape dome1 = createShape(ARC, -50, -15, 100, 30, 0, PI);
    PShape dome2 = createShape(ARC, -50, -50, 100, 100, PI, TWO_PI);
    enemyThree.addChild(chassis);
    enemyThree.addChild(dome1);
    enemyThree.addChild(dome2);
    enemyThree.scale(.3);
  }
}

