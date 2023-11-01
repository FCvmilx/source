import processing.sound.*;                              SoundFile abre, fecha;

int x, y, altura, largura;                              int f = -1;
int palpE = 1;                                          int piscaE = 0;
int palpD = 1;                                          int piscaD = 0;
int tampa = 0;                                          int boca = 0;
int iluminacao = 50;                                   int mz = 0; 

color white = color(255, 255, 255);                     color black = color(0, 0, 0);
color gray = color(126, 126, 126, 2);                   color cinzaEscuro = color(82);
color c1 = color(13, 255, 63);                          color c4 = color(255, 0, 35);
color c2 = color(48, 25, 255);                          color c2sombra = color(21, 0, 210);
color c3 = color(255, 245, 0);                          color c3sombra = color(212, 158, 21, 83);
color lingua = color(240, 130, 124);                    color eye = color(46, 240, 140);

void Fundo() {
    background(100);
}

void base() {
    //base
    fill(c2);
    translate(500, 500, 0);
    box(312, 312*1.2, 312);
    fill(black);
    translate(0, -188, 0);
    box(306, 2, 306);
    

    //rodas
    translate(-85, 206+188, -85);   
    fill(black);
    rotateX(0.685);
    for (int i=0; i < 10; i++) {    //esq traseira
        rotateX(1.22173);
        box(50);
    }

    translate(170, 0, 0);       
    for (int i=0; i < 10; i++) {    //dir traseira
        rotateX(1.22173);
        box(50);
    }

    translate(0, 0, 170);       
    for (int i=0; i < 10; i++) {    //dir frontal
        rotateX(1.22173);
        box(50);
    }

    translate(-170, 0, 0);
    for (int i=0; i < 10; i++) {    //esq frontal
        rotateX(1.22173);
        box(50);
    }







    //essa parte é importante para voltar com os outros elementos pra posição certa
    rotateX(0.685);
    translate(85, -206, -85);
}

void olhosAbertos(int e, int d, int f) {
    if (f == 0) {
        
        float larg = 512;
        //esq
        fill(white);
        translate(-52, -52, 64);
        sphere((larg / 5));
        fill(eye);
        translate(10, 0, 56);
        sphere((larg / 10));
        fill(black);
        translate(5, 0, 27);
        sphere((larg / 10) / 2);

        //dir
        fill(white);
        translate(89, 0, -83);
        sphere((larg / 5));
        fill(eye);
        translate(10, 0, 56);
        sphere((larg / 10));
        fill(black);
        translate(5, 0, 27);
        sphere((larg / 10) / 2);

        translate(-67, 52, -134);
    }
    else {
        float larg = 512;
    
        fill(c2);
        translate(-52, -52, 59);
        sphere((larg / 5));
        translate(104, 0, 0);
        sphere((larg / 5));
        translate(-53, 52, -59);

        larg = (int)(312 / 2);
        int alt = (int)(512/7)+10;
        fill(c2);
        int z = 312/2;
        translate(0, alt/2 + 5, z);
        box(larg, alt, 17);
        fill(c2sombra);
        box(larg, 20, 19);
        translate(0,-(alt/2 + 5),-z);
    }
    if (e % 60 >= 30) {
        
        fill(c2);
        translate(-52, -52, 59);
        sphere((512 / 5));
        translate(52, 52, -59);
    }
    if (d % 60 >= 30) {
        fill(c2);
        translate(53, -52, 59);
        sphere((512 / 5));
        translate(-53, 52, -59);
    }

}

void desenhaBoca(int boca) {
    int larg = (int)(312 / 2);
    int alt = (int)(512/7);
    //labios
    fill(c2sombra);
    translate(0, 10, 156);
    box(larg, 10, 15);
    translate(0, 512/7, 0);
    box(larg, 10, 15);
    translate(0, -(10 + (512/7)), -156);
    translate(-73, 50, 156);
    box(10, 512/7, 15);
    translate(146, 0, 0);
    box(10, 512/7, 15);
    translate(-73, -50, -156);

    //fundo boca
    translate(0, 42, 156);
    fill(150, 0, 0);
    box(larg, alt, 5);
    translate(0, -42, -156);

    //dentes
    translate(0, 24, 157);
    fill(white);
    box(larg - 2, alt/3, 5);

    translate(-35, 42, 0);
    fill(lingua);
    box((larg/2) - 2, alt/3, 5);

    translate(35, -66, -157);

}

void tampaAberta(int tampa) {

    //pedal
    fill(c2sombra);
    translate(0, (312/2), 0);
    box(104, 50, 313);
    fill(c3);
    translate(0, 10, 0);
    box(312/5, 20, 350);
    rotateX(PI/2);
    fill(c3);
    translate(0, -200, 360 + 156);
    box(352, (int)((312 * 1.2) / 10), 352);
    fill(c3sombra);
    translate(0, 10, 0);
    box(312 / 3, (int)((312 * 1.2) / 10) - 10, 354);

    if (tampa == 0) {
        if(!abre.isPlaying())   abre.play();
    }
    // if (tampa >= 120 && tampa < 360) {
    //     estado1();
    //     exp1();
    // }
    // if (tampa >= 360 && tampa < 480) {
    //     estado2();
    //     estado1();
    //     exp2();
    // }
    // if (tampa >= 480) {
    //     estado3();
    //     estado2();
    //     estado1();
    //     exp3();
    // }
    
}

void tampaFechada(int som) {

    if (som > 0) {
        if (!fecha.isPlaying()) fecha.play();
    }
    //tampa
    fill(c3);
    translate(0, -312*0.6, 0);
    box(352, (int)((312 * 1.2) / 10), 352);
    fill(c3sombra);
    translate(0, 10, 0);
    box(312 / 3, (int)((312 * 1.2) / 10) - 10, 354);

    //pedal
    fill(c2sombra);
    translate(0, 330, 0);
    box(104, 50, 313);
    fill(c3);
    box(312/5, 20, 360);
}
void setup() {
    size(1024, 1024, P3D); 
    background(100);
    abre = new SoundFile(this, "abrir.wav");
    fecha = new SoundFile(this, "fechar.mp3");
}

void draw() {
    noStroke();
    camera(width/2, height/2, (height/2) / tan(PI/6)  + mz, width/2, height/2, 0, 0, 1, 0);
    if (mousePressed) {
        if (mouseButton == LEFT) {
            background(100);
            camera(mouseX, mouseY, (height/2) / tan(PI/6) + mz, width/2, height/2, 0, 0, 1, 0);
        }

        if (mouseButton == RIGHT) {
            pointLight(255, 255, 255, mouseX, mouseY, 300);
        }
    }
    if (keyPressed){
        if (key == '2' || keyCode == DOWN)                                  {iluminacao--;}
        if (key == '8' || keyCode == UP)                                    {iluminacao++;}
        if (key == 'o' || key == 'O')                                       {background(100); ortho();}
        if (key == 'R' || key == 'r')                                       {iluminacao = 50; mz = 0;}
    }

    int luz = 255 * iluminacao/100;
    ambientLight(luz, luz, luz);
    directionalLight(255, 255, 255, -1, 1, -1);
    spotLight(255, 255, 255, 80, 20, 40, 0, 0, 100, PI/2, 2);
    rotateY(0.25);

    Fundo();
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

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  mz += 4*e;
}
