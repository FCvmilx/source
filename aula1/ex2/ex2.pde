void setup() {
    size(512, 512);
    background(255, 255, 255);
}

int x = 50;
int y = 100;
int opacidade = 100;
void draw() {
    translate(6, 156);
    if (opacidade >= 0) { 

        fill(255, 0, 255, opacidade);
        ellipse(x, y, 100, 100);
        opacidade -= 25;
        x += 100;
    }
}
