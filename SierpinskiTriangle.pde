public void setup() {
  size(400, 400);
}
public void draw() {
  noLoop();
  sierpinski(0,0,400);
}
public void mouseDragged() {
}
public void sierpinski(int x, int y, int len) {
  if (len <=15) {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    triangle(x, y, x+len, y, x+len/2, y+len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
