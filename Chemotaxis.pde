 //declare bacteria variables here   
 int siz=10;
 int x=5;
 int y=1;
 Bacteria [] Germ;

 void setup()   
 {
 	size(400,400);
 	Germ=new Bacteria[210];
 	for(int i=0;i<Germ.length;i++)
 	{
 	Germ[i]=new Bacteria();
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {  
 	background(0,0,0);
 	fill(255);
 	rect(-100,300,500,500);
 	fill(0,255,255);
 	textSize(50);
 	text("Merry",140,100);
 	text("Early",150,200);
 	text("Xmas",140,300);
 	for(int i=0; i<Germ.length; i++)
 	{
	Germ[i].move();
	Germ[i].show();
	}
}
	//move and show the bacteria   


 void mouseDragged()
{
}

 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int xMove=x;
 	int yMove=y;
 	int colr=((int)(Math.random()*256)+90);
 Bacteria(){
 	myX=(int)(Math.random()*401);
 	myY=(int)(Math.random()*401);
 }
 void show()
 {
 	int clor=color(colr,colr,colr);
 	fill(clor);
 	ellipse(myX,myY,siz,siz);
 }
 void move()
 {
 	myX=myX+(int)(Math.random()*xMove)-yMove;
 	myY=myY+(int)(Math.random()*xMove)-yMove;
 	if (myX>400){
 		myX=0;
 	 }   
 	 if (myY>400){
 	 	myY=0;
 	 }
 	}
 }
 