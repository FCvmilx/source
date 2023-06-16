void setup() {
    size(200, 200, P3D);
    background(0);
    noStroke();
}

void draw() {
    lights();
    ellipse(80, 100, 50, 100);
    translate(50, 50, 0);
    sphere(30);
    translate(60, 0, 0);
    sphere(30);
}
