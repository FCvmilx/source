int mz = 0; 
int mx = 0;
int my = 0;

void setup() {
    size(500, 500, P3D);
    background(100);
}

void draw() {
    camera(width/2 + mx, height/2 + my, (height/2) / tan(PI/6)  + mz, width/2 + mx, height/2 + my, 0, 0, 1, 0);

    if (mouseButton == LEFT) {
        background(100);
        camera(mouseX, mouseY, (height/2) / tan(PI/6) + mz, width/2, height/2, 0, 0, 1, 0);
    }
    
    if (keyPressed) {
        if (keyCode ==  LEFT) {
            mx += 1;
        }
        if (keyCode == RIGHT) {
            mx -= 1;
        }
        if (keyCode ==  UP) {
            my += 1;
        }
        if (keyCode == DOWN) {
            my -= 1;
        }
    }
    background(100);
    text("Clique com o botão esquerdo e arraste.", 10, 10, 0);
    text("Utilize o Scroll para zoom.", 10, 20, 0);
    text("Utilize as setas para transladar.", 10, 30, 0);
    strokeWeight(5);
    noFill();
    beginShape();
    vertex(75, 200);
    bezierVertex(0, 40, 200, 25, 350, 130);
    bezierVertex(600, 250, 400, 30, 380, 45);
    bezierVertex(200, 100, 600, 600, 50, 400);
    endShape();
    line(275, 275, 450, 250);
    
}

void mouseWheel(MouseEvent event) {
    float e = event.getCount();
    mz += 4*e;
}