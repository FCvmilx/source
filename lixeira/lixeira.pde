import processing.sound.*;

int f = -1;
int palpE = 1;
int piscaE = -1;
int palpD = 1;
int piscaD = -1;
int tampa = 0;

color white = color(255, 255, 255); color black = color(0, 0, 0);
color gray = color(126, 126, 126, 2); color cinzaEscuro = color(82);
color c1 = color(13, 255, 63); color c4 = color(255, 0, 35);
color c2 = color(48, 25, 255); color c2sombra = color(21, 0, 210);
color c3 = color(255, 245, 0); color c3sombra = color(212, 158, 21, 83);
color lingua = color(240, 130, 124); color eye = color(46, 240, 140);

int x, y, altura, largura;

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

    if (tampa > 120 && tampa < 240) {
        println("1");
    }
    if (tampa > 240 && tampa < 480) {
        println("2");
    }
    if (tampa > 480 && tampa < 960) {
        println("3");
    }
    if (tampa > 960) {
        println("4");
    }
}
void tampaFechada() {
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
void desenhaBoca() {
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
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) + 40;
        ellipse(x, y, largura + 25, largura);

        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) + 40;
        ellipse(x, y, largura + 25, largura);
    }
    else{
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);

        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);

        //fazer palpebras marcadas para o estado fechado/
    }

    if (esquerdo == -1) {
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) - (largura/2)) + 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);
    }

    if (direito == -1) {
        fill(c2);
        largura = (int)(312 / 3);
        x = (int)((width/2) + (largura/2)) - 1;
        y = (height/2) - 50;
        ellipse(x, y, largura + 2, largura + 2);
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

}
void draw() {
    frameRate(5);
    // background
    Fundo();
    noStroke();
    base();
    if (keyPressed == true)                                             {f = -1; piscaD = piscaE = -1;}
    
    olhosAbertos(palpE,palpD,0);
    if ((keyPressed == true) && ((key == 'p') || (key == 'P')))         {tampaAberta(tampa); tampa++;}
    else                                                                {tampaFechada(); tampa = 0;}
    
    if (keyPressed == true) {
        if (key == '4')                                                 {piscaE *= -1;}
        else if ((keyPressed == true) && (key == '6'))                  {piscaD *= -1;}
    }

    if (piscaE == 1)                                                    {palpE *= -1;}
    else                                                                {palpE = 1;}
    if (piscaD == 1)                                                    {palpD *= -1;}
    else                                                                {palpD = 1;}

    if ((keyPressed == true) && ((key == 'f') || (key == 'F')))         { f *= -1;} //press F to pray respect
    if (f == 1)                                                         {olhosAbertos(0,0,1);}
    
    desenhaBoca();
}