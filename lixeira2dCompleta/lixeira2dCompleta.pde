import processing.sound.*;                              SoundFile abre, fecha;

int x, y, altura, largura;                              int f = -1;
int palpE = 1;                                          int piscaE = 0;
int palpD = 1;                                          int piscaD = 0;
int tampa = 0;                                          int boca = 0;

color white = color(255, 255, 255);                     color black = color(0, 0, 0);
color gray = color(126, 126, 126, 2);                   color cinzaEscuro = color(82);
color c1 = color(13, 255, 63);                          color c4 = color(255, 0, 35);
color c2 = color(48, 25, 255);                          color c2sombra = color(21, 0, 210);
color c3 = color(255, 245, 0);                          color c3sombra = color(212, 158, 21, 83);
color lingua = color(240, 130, 124);                    color eye = color(46, 240, 140);


void drawFootball(float x, float y, float radius) {
    fill(0, 0, 155);
    // Desenhar as formas geométricas para criar a bola de futebol
    ellipse(x, y, radius, radius);
    fill(white);
    drawPentagons(x, y, radius);

}

void drawPentagons(float x, float y, float radius) {
  float angle = TWO_PI / 5;  // Ângulo entre os pentágonos
  float rotation = PI / 10;  // Ângulo de rotação dos pentágonos

  // Desenhar os pentágonos ao redor da bola
  for (int i = 0; i < 5; i++) {
    pushMatrix();
    translate(x, y);
    rotate(i * angle + rotation);
    drawPentagon(0, 0, radius * 0.2);
    popMatrix();
  }
}

void drawPentagon(float x, float y, float radius) {
  beginShape();
  for (int i = 0; i < 5; i++) {
    float theta = TWO_PI * i / 5;
    float px = x + cos(theta) * radius;
    float py = y + sin(theta) * radius;
    vertex(px, py);
  }
  endShape(CLOSE);
}

void exp1() {
    //retangulo base
    x = (width/2) - (312/2);
    y = (height/2) - (int)((312/2)* 1.2) + 10;
    largura = 312;
    altura = (int)(312 * 1.2) - 50;
    fill(c2);
    rect(x,y,largura, altura, 10);

    //fazer os olhos
    //olhos 
    fill(white);
    largura = (int)(312 / 3);
    x = (int)((width/2) + (largura/2)) - 1;
    y = (height/2) - 50;
    ellipse(x, y, largura, largura);

    largura = (int)(312 / 3);
    x = (int)((width/2) - (largura/2)) + 1;
    y = (height/2) - 50;
    ellipse(x, y, largura, largura);
    
    //iris
    y = (height/2) - 50;
    x = (int)((width/2) - (largura / 3)) - 5;
    largura = (int)(312 / 6);
    fill(eye);
    ellipse(x, y, largura, largura);
    fill(black);
    ellipse(x, y, largura / 3 + 3, largura /3 + 3);

    y = (height/2) - 50;
    x = (int)((width/2) + (largura*1.3)) - 28;
    largura = (int)(312 / 6);
    fill(eye);
    ellipse(x, y, largura, largura);
    fill(black);
    ellipse(x, y, largura / 3 + 3, largura /3 + 3);

    //palpebras
    //DIREITA
    fill(c2);
    largura = (int)(312 / 3);
    x = (int)((width/2) + (largura/2)) - 1;
    y = (height/2) + 30;
    ellipse(x, y, largura + 25, largura);
    


    //ESQUERDA
    largura = (int)(312 / 3);
    x = (int)((width/2) - (largura/2)) + 1;
    y = (height/2) + 30;
    ellipse(x, y, largura + 25, largura);
    
    //boca
    largura = (int)(312 / 2);
    x = (int)((width/2) - (largura/2));
    y = (height/2) + 20;
    altura = (512/6);
    fill(200, 0, 0);
    rect(x, y + 10, largura, altura - 20, 25);
    fill(150, 0, 0);
    rect(x, y + 10, largura - 20, altura - 20, 20, 25, 100, 25);

    // dentes 
    largura = (int)(312 / 2);
    x = (int)((width/2) - (largura/2));
    y = (height/2) + 20;
    altura = (512/12);
    fill(white);
    rect(x, y + 10, largura, altura - 20, 25, 25, 0, 0);
    
    //lingua
    largura = (int)(312 / 4);
    altura = (512/10);
    x = (int)((width/2) - largura);
    y = (height/2) + (altura/2) + 11;
    fill(lingua);
    rect(x, y + 33, largura, altura - 25, 0, 75, 15, 25);
}
void exp2() {
    //retangulo base
    x = (width/2) - (312/2);
    y = (height/2) - (int)((312/2)* 1.2) + 10;
    largura = 312;
    altura = (int)(312 * 1.2) - 50;
    fill(c2);
    rect(x,y,largura, altura, 10);

    //fazer os olhos
    //olhos 
    fill(white);
    largura = (int)(312 / 3);
    x = (int)((width/2) + (largura/2)) - 1;
    y = (height/2) - 50;
    ellipse(x, y, largura, largura);

    largura = (int)(312 / 3);
    x = (int)((width/2) - (largura/2)) + 1;
    y = (height/2) - 50;
    ellipse(x, y, largura, largura);
    
    //iris
    y = (height/2) - 55;
    x = (int)((width/2) - (largura / 3)) - 5;
    largura = (int)(312 / 6);
    fill(eye);
    ellipse(x, y, largura, largura);
    fill(black);
    ellipse(x, y, largura / 3 + 3, largura /3 + 3);

    y = (height/2) - 55;
    x = (int)((width/2) + (largura*1.3)) - 28;
    largura = (int)(312 / 6);
    fill(eye);
    ellipse(x, y, largura, largura);
    fill(black);
    ellipse(x, y, largura / 3 + 3, largura /3 + 3);

    //palpebras
    //DIREITA
    fill(c2);
    largura = (int)(312 / 3);
    x = (int)((width/2) + (largura/2)) - 1;
    y = (height/2) + 30;
    ellipse(x, y, largura + 30, largura);
    


    //ESQUERDA
    largura = (int)(312 / 3);
    x = (int)((width/2) - (largura/2)) + 1;
    y = (height/2) + 30;
    ellipse(x, y, largura + 30, largura);
    

    //boca
    largura = (int)(312 / 3);
    x = (int)((width/2) - (largura/2));
    y = (height/2) + 20;
    altura = (512/10);
    fill(c2sombra);
    rect(x, y + 10, largura, altura - 20, 25);
}
void exp3() {
    //retangulo base
    x = (width/2) - (312/2);
    y = (height/2) - (int)((312/2)* 1.2) + 10;
    largura = 312;
    altura = (int)(312 * 1.2) - 50;
    fill(c2);
    rect(x,y,largura, altura, 10);
    
    //fazer os olhos
    //olhos 
    fill(white);
    largura = (int)(312 / 3);
    x = (int)((width/2) + (largura/2)) - 1;
    y = (height/2) - 50;
    ellipse(x, y, largura, largura);

    largura = (int)(312 / 3);
    x = (int)((width/2) - (largura/2)) + 1;
    y = (height/2) - 50;
    ellipse(x, y, largura, largura);
    
    //iris
    y = (height/2) - 60;
    x = (int)((width/2) - (largura / 3)) - 5;
    largura = (int)(312 / 6);
    fill(eye);
    ellipse(x, y, largura, largura);
    fill(black);
    ellipse(x, y, largura / 3 + 5, largura /3 + 5);

    y = (height/2) - 60;
    x = (int)((width/2) + (largura*1.3)) - 28;
    largura = (int)(312 / 6);
    fill(eye);
    ellipse(x, y, largura, largura);
    fill(black);
    ellipse(x, y, largura / 3 + 5, largura /3 + 5);

    //palpebras
    //DIREITA
    fill(c2);
    largura = (int)(312 / 3);
    x = (int)((width/2) + (largura/2)) - 1;
    y = (height/2) + 25;
    ellipse(x, y, largura + 30, largura);
    


    //ESQUERDA
    largura = (int)(312 / 3);
    x = (int)((width/2) - (largura/2)) + 1;
    y = (height/2) + 25;
    ellipse(x, y, largura + 30, largura);

    //fazer a boca curvada igual as palpebras
    //boca
    // largura = (int)(312 / 3);
    // x = (int)((width/2) - (largura/2));
    // y = (height/2) + 20;
    // altura = (512/10);
    // fill(c2sombra);
    // rect(x, y + 10, largura, altura - 20, 25);

    fill(200, 0, 0);
    largura = (int)(312 / 2);
    altura = 60;
    x = (int)(width/2);
    y = (height/2) + 20 + ((512/10)/2);
    ellipse(x, y, largura, altura);
    fill(c2);
    largura = (int)(312 / 2);
    altura = 30;

    fill(150, 0, 0);
    largura = (int)(312 / 2) - 20;
    altura = 60;
    x = (int)(width/2);
    y = (height/2) + 20 + ((512/10)/2);
    ellipse(x, y, largura, altura);
    
    fill(lingua);
    largura = (int)(312 / 2) - 50;
    altura = 30;
    x = (int)(width/2);
    y = (height/2) + 20 + ((512/10)/2) + 20;
    ellipse(x, y, largura, altura);
    fill(c2);
    largura = (int)(312 / 2);
    altura = 30;
    x = (int)(width/2);
    y = (height/2) + 20 + ((512/10)/2) + 30;
    ellipse(x, y, largura, altura);
    

    x = (int)(width/2);
    y = (height/2) + 20 + ((512/10)/2) - 9;
    altura = 43;
    largura = (int)(312 / 2) - 10;
    fill(white);
    arc(x, y, largura, altura, PI, 2*PI);

}

void estado1() {
    //lixos
    y = 60 + (height/2) - (int)((312/2)* 1.2) - 312/3;
    x = (width/2) - (312/2);
    altura = 312/5 - 7;
    largura = 312/4;
    fill(255,0,0);
    rect(x, y, largura, altura, 0, 10, 0, 0);

    x = (width/2) - (312/2);
    y = 60 + (height/2) - (int)((312/2)* 1.2) - 312/3;
    altura = 312/5 - 7;
    largura = 312/4;
    fill(0, 255, 0);
    arc(x, y, largura, altura, 0, HALF_PI);

    x = (width/2) - (312/2) + 312/4;
    y = 60 + (height/2) - (int)((312/2)* 1.2) - 312/3 + 312/5 - 7;
    altura = (312/5 - 5)/2;
    largura = 312/3;
    fill(255, 0, 255);
    rect(x, y, largura, -altura, 0, 10, 5, 0);

    x = (width/2) - (312/2) + 312/4;
    y = 60 + (height/2) - (int)((312/2)* 1.2) - 312/3 + 312/5 - 7;
    altura = 312/5 - 7;
    largura = 312/4;
    fill(0, 255, 0);
    arc(x, y, largura, altura, HALF_PI + PI, 2*PI);
    
}
void estado2() {

    //lixos
    y = 55 + (height/2) - (int)((312/2)* 1.2) - 312/3;
    largura = 312/4;
    x = (width/2) - (312/2) + 312 - largura;
    altura = 312/5 - 2;
    fill(155,20, 20);
    rect(x, y, largura, altura, 10, 5, 0, 0);


    x = (width/2) - (312/2) + 312/2;
    y = 60 + (height/2) - (int)((312/2)* 1.2) - 312/3 + 312/5 - 7;
    altura = 10 +(312/5 - 5)/2;
    largura = 312/3;
    fill(155, 0, 155);
    rect(x, y, largura, -altura, 10, 5, 0, 0);
}
void estado3() {

    fill(255, 165, 0);
    ellipse(width/2 + 15, height*0.28, 230, 50);
    drawFootball(width/2 - 45, height*0.28, 80);

}

void tampaAberta(int tampa) {
    //a altura da tampa aberta sera a metade da largura do retangulo base
    //retangulo tampa
    altura = 312/2;
    y = 60 + (height/2) - (int)((312/2)* 1.2) - altura;
    x = (width/2) - (312/2);
    largura = 312;
    fill(c3);
    rect(x,y,largura, altura, 10);
    
    //interior da tampa
    altura = (int)(312/2 * 0.9);
    y = 60 + (height/2) - (int)((312/2)* 1.2) - altura;
    x = (width/2) - (312/2) + 15;
    largura = (int)(312 * 0.9);
    fill(c3sombra);
    rect(x,y,largura, altura, 10);

    //base
    x = (width/2) - (312/2);
    y = (height/2) - (int)((312/2)* 1.2) + 10;
    largura = 312;
    altura = 60;
    fill(c2);
    rect(x,y,largura, altura, 5);

    //abertura do pedal
    x = width/2 - (312/6);
    y = height/2 + (312/2) - 9;
    largura = 312 / 3;
    altura = 40;
    fill(c2sombra);
    rect(x, y, largura, altura, 5);

    //pedal
    x = width/2 - (312/11) - 2;
    y = height/2 + (312/2) + 7 + 7;
    largura = 312 / 5;
    altura = 24;
    fill(c3);
    rect(x, y - 5, largura, altura, 5, 5, 20, 20);
    if (tampa == 0) {
        if(!abre.isPlaying())   abre.play();
    }

    
    if (tampa >= 120 && tampa < 360) {
        estado1();
        exp1();
    }
    if (tampa >= 360 && tampa < 480) {
        estado2();
        estado1();
        exp2();
    }
    if (tampa >= 480) {
        estado3();
        estado2();
        estado1();
        exp3();
    }
}
void tampaFechada(int som) {
    if (som > 0) {
        if (!fecha.isPlaying()) fecha.play();
    }
    //retangulo tampa
    y = (height/2) - (int)((312/2)* 1.2);
    x = (width/2) - (312/2) - 20;
    largura = 312 + 40;
    altura = (int)((312 * 1.2) / 10);
    fill(c3);
    rect(x,y,largura, altura, 10);


    //pegada da tampa
    y = (height/2) - (int)((312/2)* 1.2);
    x = (width/2) - (312/6);
    largura = 312 / 3;
    altura = (int)((312 * 1.2) / 10);
    fill(c3sombra);
    rect(x,y + 10,largura, altura - 10, 10, 10, 0, 0);


    //abertura do pedal
    x = width/2 - (312/6);
    y = height/2 + (312/2) - 9;
    largura = 312 / 3;
    altura = 40;
    fill(c2sombra);
    rect(x, y, largura, altura, 5);

    //pedal
    x = width/2 - (312/11) - 2;
    y = height/2 + (312/2) + 7;
    largura = 312 / 5;
    altura = 24;
    fill(c3);
    rect(x, y - 5, largura, altura, 5, 5, 20, 20);
}
void base() {
    //retangulo base
    x = (width/2) - (312/2);
    y = (height/2) - (int)((312/2)* 1.2) + 10;
    largura = 312;
    altura = (int)(312 * 1.2) - 10;
    fill(c2);
    rect(x,y,largura, altura, 10);

    //alça esquerda
    x = (width/2) - (312/2) - 20;
    y = (height/2) - 100;
    largura = 20;
    altura = 100;
    fill(c3);
    rect(x, y, largura, altura, 10, 5, 5, 10);
    fill(c3sombra);
    rect(x, y, largura, altura, 10, 5, 5, 10);



    //roda esq
    x = 17 + (width/2) - (312/2);
    y = (int)((height/2) - ((312/2)* 1.2) + (312 * 1.2));
    largura = 312 / 5;
    altura = 48;
    fill(cinzaEscuro);
    rect(x, y, largura, altura, 5, 5, 20, 20);

    //roda dir
    x = (int)((width/2) - (312/2) + 312 - 17 - (312 / 5));
    y = (int)((height/2) - ((312/2)* 1.2) + (312 * 1.2));
    largura = 312 / 5;
    altura = 48;
    fill(cinzaEscuro);
    rect(x, y, largura, altura, 5, 5, 20, 20);
}
void desenhaBoca(int boca) {
    if (boca == 0) {

        //boca
        largura = (int)(312 / 2);
        x = (int)((width/2) - (largura/2));
        y = (height/2);
        altura = (512/5);
        fill(200, 0, 0);
        rect(x, y + 10, largura, altura - 20, 25);
        fill(150, 0, 0);
        rect(x, y + 10, largura - 20, altura - 20, 20, 25, 100, 25);

        // dentes 
        largura = (int)(312 / 2);
        x = (int)((width/2) - (largura/2));
        y = (height/2);
        altura = (512/10);
        fill(white);
        rect(x, y + 10, largura, altura - 20, 25, 25, 0, 0);

        //lingua
        largura = (int)(312 / 4);
        altura = (512/9);
        x = (int)((width/2) - largura);
        y = (height/2) + (altura/2);
        fill(lingua);
        rect(x, y + 33, largura, altura - 25, 0, 75, 15, 25);
    }
    else {
        
        //boca
        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2));
        y = (height/2) + 20;
        altura = (512/10);
        fill(c2sombra);
        rect(x, y + 10, largura, altura - 20, 25);

    }

}
void olhosAbertos(int esquerdo, int direito, int fechados) { 
    if (fechados == 0) {
        //olhos 
        fill(white);
        largura = (int)(312 / 3);
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 50;
        ellipse(x, y, largura, largura);

        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 50;
        ellipse(x, y, largura, largura);
        
        //iris
        y = (height/2) - 50;
        x = (int)((width/2) - (largura / 3));
        largura = (int)(312 / 6);
        fill(eye);
        ellipse(x, y, largura, largura);
        fill(black);
        ellipse(x, y, largura / 3, largura /3);

        y = (height/2) - 50;
        x = (int)((width/2) + (largura*1.3));
        largura = (int)(312 / 6);
        fill(eye);
        ellipse(x, y, largura, largura);
        fill(black);
        ellipse(x, y, largura / 3, largura /3);

        //palpebras
        //DIREITA
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) + 40;
        ellipse(x, y, largura + 25, largura);
        


        //ESQUERDA
        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) + 40;
        ellipse(x, y, largura + 25, largura);
    }
    else{
        //direita
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);
        
        //esquerda
        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);

        //fazer palpebras marcadas para o estado fechado/
        fill(c2sombra);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 50;
        ellipse(x, y, largura, altura);
        fill(c2);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 40;
        ellipse(x, y, largura, altura);


        fill(c2sombra);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 50;
        ellipse(x, y, largura, altura);
        fill(c2);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 40;
        ellipse(x, y, largura, altura);
    }

    if (esquerdo % 60 >= 30) {
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);
        fill(c2sombra);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 50;
        ellipse(x, y, largura, altura);
        fill(c2);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 40;
        ellipse(x, y, largura, altura);
    }

    if (direito % 60 >= 30) {
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);
        fill(c2sombra);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 50;
        ellipse(x, y, largura, altura);
        fill(c2);
        largura = (int)(312 / 3);
        altura = 20;
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 40;
        ellipse(x, y, largura, altura);
    }
}
void Fundo() {
    int x, y, largura, altura;
    
    // ceu
    x = y = 0;
    largura = width;
    altura = (int)((height/2) - ((312/2)* 1.2) + (312 * 1.2)) + 48;;
    fill(153, 217, 234);
    rect(x, y, largura, altura);

    //rua
    x = 0;
    y = (int)((height/2) - ((312/2)* 1.2) + (312 * 1.2)) + 107;
    altura = height + 1 - y;
    largura = width;
    fill(cinzaEscuro);
    rect(x, y, largura, altura);

    // meio fio
    y = (int)((height/2) - ((312/2)* 1.2) + (312 * 1.2)) + 48;
    x = 0;
    largura = width/8;
    altura = 60;
    while(x <= width - (width/8)) {
        //desenha retangulo;
        fill(gray);
        rect(x, y, largura, altura, 5);

        x += largura;
    }


    // //vitrine dos correios
    // y = 100;
    // x = 0;
    // largura = width;
    // altura = 200;
    // noStroke();
    // fill(c3);
    // rect(x, y, largura, altura);
    // fill(c3sombra);
    // rect(x, y, largura, altura);

    // // parede correios
    // y = 300;
    // x = 0;
    // altura = (int)((height/2) - ((312/2)* 1.2) + (312 * 1.2)) + 48 - 300;
    // largura = width;
    // fill(251, 247, 230);
    // rect(x,y, largura, altura);

    // //rodape

    // x = 0;
    // y = height/2 + 220;
    // altura = 15;
    // largura = width;
    // fill(206, 162, 138);
    // rect(x, y, largura, altura);

    // //portal
    // x = width/4 - 245;
    // y = height/2 - 150;
    // largura = 310;
    // altura = 380;
    // fill(206, 162, 138);
    // rect(x, y, largura, altura);
    // x = width/4 - 250;
    // y = height/2 - 160;
    // largura = 320;
    // altura = 10;
    // fill(206, 162, 138);
    // rect(x, y, largura, altura);


    // //porta esquerda
    // x = width/4 - 240;
    // y = height/2 - 150;
    // largura = 300;
    // altura = 380;
    // fill(221, 236, 234);
    // rect(x, y, largura, altura);
    // fill(50, 50, 50);
    // rect((x+largura)/2, y, 3, altura);



    // //base da placa
    // y = 120;
    // x = width/8;
    // largura = 3*width/4;
    // altura = 160;
    // noStroke();
    // fill(c2sombra);
    // rect(x, y, largura, altura);

    // //logo
    // x = ((width/8) + (width/3)) / 2;
    // y = (120 + 280) / 2;
    // largura = (int)(x*0.66);
    // fill(white);
    // ellipse(x, y, largura, largura);

    // //placa
    // y = 124;
    // x = width/3;
    // largura = (int)((width*0.75)*0.75 - 26);
    // altura = 152;
    // noStroke();
    // fill(c3);
    // rect(x, y, largura, altura);

    // //texto
    // textSize(110);
    // fill(c2sombra);
    // text("CORREIAS", x, y*2); 


}
void setup() {
    size(1024, 1024); 
    background(255, 255, 255);
    abre = new SoundFile(this, "abrir.wav");
    fecha = new SoundFile(this, "fechar.mp3");
    
}








void draw() {
    // background
    Fundo();
    noStroke();
    base();
    if (keyPressed == true)                                                 {f = -1; piscaD = piscaE = -1;}
    
    olhosAbertos(palpE,palpD,0);
    if (keyPressed == true)                                                 {
        if (key == '4' || keyCode == LEFT)                                  {piscaE *= -1;}
        else if ((keyPressed == true) && (key == '6' || keyCode == RIGHT))  {piscaD *= -1;}
    }

    if (piscaE == 1)                                                        {palpE++;}  // criar um n que cresce a cada iteração de draw
    else                                                                    {palpE = 0;}  
    if (piscaD == 1)                                                        {palpD++;}  
    else                                                                    {palpD = 0;}

    if ((keyPressed == true) && ((key == 'f') || (key == 'F')))             { f *= -1;} //press F to pray respect
    if (f == 1)                                                             {olhosAbertos(0,0,1); desenhaBoca(1);}
    else                                                                    {desenhaBoca(0);}
    if ((keyPressed == true) && ((key == 'p') || (key == 'P')))             {tampaAberta(tampa); tampa++;}
    else                                                                    {tampaFechada(tampa); tampa = 0;}
    save("preview.png");
}


