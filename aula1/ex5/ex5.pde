void setup() {
    size(512, 512);
    background(255, 255, 255);
}

int x = 50;
int y = 50;
int altura = 20;
int largura = 20;
void draw() {
    if (largura <= 101) { 

        fill(255, 0, 255);
        ellipse(x, y, largura, altura);
        x += 70;
        y += 70;
        largura += 10;
        altura += 10;
    }
    save("foto.png");
}
