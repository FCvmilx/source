void setup() {
    size(700, 500, P3D);
    background(100);
}

int rotacao = 0;
void detalhes() {
    background(100);
    rotate(rotacao/5);
    fill(255, 255, 0);
    triangle(0, 0, -250, -150, -150, -150);
    triangle(0, 0, -250, -30, -250, 30);
    triangle(0, 0, 250, -150, 150, -150);
    triangle(0, 0, 250, -30, 250, 30);
    triangle(0, 0, -250, 150, -150, 150);
    triangle(0, 0, 250, 150, 150, 150);
    triangle(0, 0, -30, -150, 30, -150);
    triangle(0, 0, -30, 150, 30, 150);
    rotate(-rotacao/5);
}
void draw() {
    if (keyPressed) {
        if (key == 'l' || key == 'L') {
            pointLight(255, 255, 255, mouseX, mouseY, -1);
        }
        save("Bandeora_pointLight.png");
    }
    else {

        ambientLight(230, 230, 230);
        pointLight(255, 255, 255, -1, 0, -1);
        spotLight(255, 255, 255, 80, 20, 40, 0, 0, 100, PI/2, 2);
        save("Bandeira_Ilumina01.png");
    }

    if (mousePressed) { //pressione o botao esquerdo do mouse para mover a camera
        if (mouseButton == LEFT) {
            background(100);
            camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
        }
    }
    save("Bandeira_Movimento.png");

    rotateY(0.25);
    translate(350, 250, 16);
    detalhes(); //detalhes amarelos da bandeira
    noStroke();
    fill(255, 0, 0);
    translate(0,0,-16);
    box(500, 300, 30);  //fundo vermelho da bandeira
    translate(0, 0, 16);


    translate(0,0,10);
    fill(255, 0, 0);
    ellipse(0, 0, 100, 100); //circulo vermelho atras do circulo amarelo
    translate(0,0,10);
    fill(255, 255, 0);
    ellipse(0, 0, 80, 80); //circulo amarelo
    rotacao++;

    save("Bandeira_Original.png");

    
   

}
