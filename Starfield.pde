
Particle[] parts = new Particle[1000];
  void setup()
    {
    size(500,500);
      for (int i = 0; i < parts.length; i++)
        parts[i] = new Particle();
      parts[0] = new Oddball();
    }
   void draw(){
     background(0);
     
     for(int i = 0; i< parts.length; i++){
       parts[i].move();
       parts[i].show();
     }
   }
   
  

  class Particle{ 
    double myX, myY,myAngle,mySpeed;
    int myColor;
    int dispersalCounter = 0;
    int dispersalIncrement = 100;
    
    Particle(){
      myX = myY = 200;
      myAngle = Math.random()*2*Math.PI;
      mySpeed = Math.random()*10;
      myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    }
    void move(){
      myX = myX + Math.cos(myAngle)*mySpeed;
      myY = myY + Math.sin(myAngle)* mySpeed;
      if (dispersalCounter >= dispersalIncrement) {
      disperse();
      dispersalCounter = 0; 
    } else {
      dispersalCounter++;
    }
    }
    
    void disperse(){
      myX = 200 + Math.random()*50;
      myY = 200 + Math.random()*50;
    }
    void show(){
      fill(myColor);
      stroke(myColor);
      ellipse((float)myX,(float)myY,5,5);
    }
    
    
  }

  class Oddball extends Particle{
    Oddball(){
      mySpeed = Math.random()*5;
    }
   void move()
   {
     myX = myX + Math.cos(myAngle) * mySpeed;
     myY = myY + Math.sin(myAngle) * mySpeed;
     myX = myX + Math.cos(myAngle)*mySpeed;
      myY = myY + Math.sin(myAngle)* mySpeed;
      if (dispersalCounter >= dispersalIncrement) {
      disperse();
      dispersalCounter = 0; 
    } else {
      dispersalCounter++;
    }
   }
   
  void show()
   {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX + 20,(float)myY + 20,50,50);
   } 
 }

