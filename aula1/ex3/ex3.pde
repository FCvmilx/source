PImage img;
void setup() {
    size(512, 512);
    background(255, 255, 255);
    stroke(0,0,0);
    img = loadImage("foto.jpg");
}

void draw() {
    image(img, -500, -100);
    save("foto.png"); 
}
