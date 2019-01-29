public void setup()
{
  size(500,500);
  background(0);
}
public void draw()
{
  //sierpinski(0, mouseX, mouseY);
  sierpinski(0,500,500);
}
public void mouseClicked()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20)
    triangle(x+len/2, y-len, x, y, x+len, y);
  else
  {
    fill(#F0D433);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    ellipse(x+len/2, y, len/2, len/2);
    fill(255);
    ellipse(x+len/2, y, len/2, len/4);
    fill(0);
    ellipse(x+len/2, y, len/30, len/4);
    fill(#F0D433);
  }
}
