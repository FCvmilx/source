color white = color(255);
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);

void setup() {
    size(512, 512);
    background(white);
    noStroke();
}

void draw() {
    background(white);
    fill(red);
    rect(0, 0, 200, 100);
    fill(red);
    ellipse(mouseX, mouseY, 33, 33);
        if (mouseButton == RIGHT || mouseX > width/3 && mouseX < (2 * width/3) || mouseY > height/3 && mouseY < (2 * height/3)) {
            background(white);
            fill(green);
            ellipse(width/2, height/2, 200, 500);
            ellipse(mouseX, mouseY, 33, 33);
        }
        if (mouseButton == LEFT || mouseX > (2 * width/3) || mouseY > (2 * height/3)) {
            background(white);
            fill(blue);
            triangle(512, 30, 512, 512, 100, 0);
            fill(blue);
            ellipse(mouseX, mouseY, 33, 33);
        }

}







void mouseReleased() {
    
}