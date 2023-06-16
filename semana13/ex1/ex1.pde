void setup() {
    size(1024, 1024, P3D); 
    background(100);
}
color c1 = color(13, 255, 63);                          color c4 = color(255, 0, 35);
color c2 = color(48, 25, 255);                          color c2sombra = color(21, 0, 210);
color c3 = color(255, 245, 0);                          color c3sombra = color(212, 158, 21, 83);
void draw() {
   if (mousePressed) {
        background(100);
        camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
    }
    noStroke();
    ambientLight(155, 155, 155);
    directionalLight(255, 255, 255, -1, 0, 0);
    spotLight(255, 255, 255, 80, 20, 40, 0, 0, 100, PI/2, 2);
    rotateY(0.25);

    //base
    fill(c2);
    translate(500, 500, 0);
    box(312, 312*1.2, 312);

    //tampa
    fill(c3);
    translate(0, -312*0.6, 0);
    box(352, (int)((312 * 1.2) / 10), 352);
    fill(c3sombra);
    translate(0, 10, 0);
    box(312 / 3, (int)((312 * 1.2) / 10) - 10, 354);

}
