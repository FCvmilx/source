void setup()
{
size(640, 360, P3D);
noStroke();
}
void draw()
{
lights();
background(0);
float cameraY = height/2.0;
float fov = mouseX/float(width) * PI/2;
float cameraZ = cameraY / tan(fov / 2.0);
float aspect = float(width)/float(height);
if (mousePressed && mouseButton == RIGHT)
{
aspect = aspect / 2.0;
perspective(fov, aspect, cameraZ/10.0, cameraZ*10.0);
}
translate(width/2+30, height/2, 0);
rotateX(-PI/6);
if (mousePressed && mouseButton == LEFT) {

    rotateY(PI/3 + mouseY/float(height) * PI);
}
box(45);
translate(0, 0, -50);
box(30);
}