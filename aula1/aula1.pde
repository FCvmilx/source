PImage img;


void setup() {
    size(512, 512);
    background(255, 255, 255);
    stroke(0,0,0);
    img = loadImage("foto.jpg");
}

int transparencia = 100;
int x = 30;
int y = 400;
void draw() {
    image(img, -500, -100);
    image(img, -0, -0, width/2, height/2);
    fill(255,255,255);
    fill(255, 0, 0);
    ellipse(200, 100, 100, 50);
    fill(0, 255, 0);
    rect(150, 250, 200, 100);
    line(0, 0, 512, 512);
    if (transparencia >= 0) {

        fill(255, 0, 255, transparencia);
        ellipse(x, y, 30, 30);
        transparencia -= 30;
        x += 30;
        // noLoop();
    }
    // else {
    //     loop();
    //     save("foto.png"); 
        
    // }
    translate(156, 56);
    fill(0, 0, 255);
    ellipse(100, 200, 50, 50);
    

}
