
int x = 0;
int cx = 200;



void pillars(int px, int py) {
	fill(0,0,0);
	rect(px,py,20,250);
	rect(px-10,py + 245,40,5);
	rect(px-5, py + 235,30,10);
}

void suspend(int sx,int sy){
	noFill();
	arc(sx,sy,600,300,0,PI);

}


void setup()
{
  size(800,400);  
  background(250,250,210);
}

void draw(){
  
	noFill();
	rect(0,200,800,10);
	while(x <= 800) {
		line(x,200,x - 10,210);
		line(x,200,x + 10,210);
		x = x + 20;
	}


	//car
	fill(0);
	rect(cx,188,30,10);
	
	ellipse(cx + 5,198,5,5);
	ellipse(cx + 25,198,5,5);
	fill(114, 144, 191);
	rect(0,300,800,100);
	
	pillars(80,50);
	pillars(700,50);
	suspend(400,50);
	suspend(-220,50);
	suspend(1020,50);
}