void setup() {
    size(512, 512);
    background(255, 255, 255);
    
}

void draw() {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(200, 100, 100, 50);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    rect(150, 250, 200, 100);
    stroke(0,0,0);
    line(0, 0, 512, 512);
    translate(156, 56);
    stroke(0,0,255);
    fill(0, 0, 255);
    ellipse(100, 200, 50, 50);
}
