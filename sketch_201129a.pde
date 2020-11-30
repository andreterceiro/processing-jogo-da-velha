void setup() {
    background(170, 170, 255);
    size(300,300);
    stroke(0);
    line(100,0,100,300);
    line(200,0,200,300);
    line(0,100,300,100);
    line(0,200,300,200);
    textSize(132);
}

void draw() {
    String caracterAtual = "x";
    print(caracterAtual);
  
    if (mousePressed) {
        int coordinates[] = getCenterOfTheSquare();
        // console.log(event);
        writeChar(caracterAtual, coordinates[0], coordinates[1]);
        caracterAtual = mudarCaracterAtual(caracterAtual);
        print(caracterAtual);
    }
}

void writeChar(String c, int x, int y) {
   x = x - 40;
   y = y + 35;
   text(c, x, y);
}

String mudarCaracterAtual(String caracterAtual) {
    if (caracterAtual == "x") {
        return "o";
    } else {
      return "x";
    }
}

int[] getCenterOfTheSquare() {
    int coordinates[];
    coordinates = new int[2];
    
    if (mouseX < 100) {
        coordinates[0] = 50;
    } else if (mouseX > 100 && mouseX < 200 ) {
        coordinates[0] = 150;
    } else if (mouseX > 200) {        
        coordinates[0] = 250;
    }
    if (mouseY < 100) {
        coordinates[1] = 50;
    } else if (mouseY > 100 && mouseY < 200 ) {
        coordinates[1] = 150;
    } else if (mouseY > 200) {        
        coordinates[1] = 250;
    }
    
    return coordinates;
}
