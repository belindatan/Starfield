
Particle[]stars;
Particle[]moon;
void setup()
{
	size(500,500);

	stars=new Particle[100];
 	for(int i=0; i<stars.length;i++)
 		{
 		 stars[i]=new NormalParticle();
 		
 		 	//your code here
		} 
		stars[0]=new OddballParticle();



		moon=new Particle[100];
		for(int j=0; j<moon.length;j++)
 		{
		moon[j]=new JumboParticle();
		}
}

void draw()
{
background(0);
frameRate(25);

 for (int i=0; i<stars.length; i++)
 { 
    stars[i].move();
	stars[i].show();
 }

 for(int j=0; j<moon.length;j++)
 		{
 		moon[j].move();
		moon[j].show();
		}


/*
int x,y;
	ellipse(x,y,10,10);

*/
	//your code here
}
class NormalParticle implements Particle
{	int col1,col2,col3;
	double x,y,angle,speed;
	NormalParticle()
	{
		x=300.0;
		y=300.0;
		angle=(Math.random()*2*Math.PI);
		speed=(Math.random()*10);
		col1=(int)(Math.random()*355);
		col2=(int)(Math.random()*355);
		col3=(int)(Math.random()*355);
		

	//	fill(col1,col2,col3);

		

	}
	public void move()
	{
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
			if (x>500|| x<0 || y>500 || y<0) 
		{	x=300;
			y=300;
		}
		//angle=angle+.025;
	}	
	public void show()
	{
	/*	col1=(int)(Math.random()*355);
		col2=(int)(Math.random()*355);
		col3=(int)(Math.random()*355);*/

		fill(col1,col2,col3,200);
		ellipse((float)x,(float)y,10.0,10.0);
		
	}
	//your code here
}


interface Particle
{
	public void move();
	public void show();
	//your code here
}
class OddballParticle implements Particle//uses an interface
{	int col1,col2,col3;
	double x,y,angle,speed;
	OddballParticle()
	{
		x=300.0;
		y=300.0;
		angle=1.5;
		speed=1;
		//col1=(int)(Math.random()*355);
		//col2=(int)(Math.random()*355);
		//col3=(int)(Math.random()*355);
	}
	public void move()
	{	
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
	
		angle=angle+.025;
	}
	public void show()
	{
		fill(255);
		ellipse((float)x,(float)y,200.0,200.0);
	}
	//your code here
}
class JumboParticle extends OddballParticle//uses inheritance
{
	int col1,col2,col3;
	double x,y,angle,speed;
	JumboParticle()
	{
		x=300.0;
		y=300.0;
		angle=(Math.random()*2*Math.PI);
		speed=(Math.random()*10);
		//col1=(int)(Math.random()*355);
		//col2=(int)(Math.random()*355);
		//col3=(int)(Math.random()*355);
	}
	public void move()
	{	
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
		angle=angle+.025;
	}
	public void show()
	{	noStroke();
		fill(0,210,255,100);
		ellipse((float)x,(float)y,30.0,30.0);
	}
	//your code here
	//your code here
}

