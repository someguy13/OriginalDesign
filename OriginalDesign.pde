
int x = 0;
int cx = 200;
int bx = 200;
int timer = 0;
char time = 'D';

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
	
	if(time == 'D'){
		background(250,250,210);
		fill(0,24,72,timer/2);
		rect(0,0,800,400);
  	}
  	else if(time == 'N') {
  		background(0,24,72);
  		fill(250,250,210,(1000-timer)/2);
  		rect(0,0,800,400);
  	}
	noFill();
	rect(0,200,800,10);
	while(x <= 800) {
		line(x,200,x - 10,210);
		line(x,200,x + 10,210);
		x = x + 20;
	}
	x = 0;

	//car
	fill(255,0,0);
	rect(cx,188,30,10);
	rect(cx + 5,183,20,5);
	ellipse(cx + 5,198,5,5);
	ellipse(cx + 25,198,5,5);
	fill(114, 144, 191);
	rect(0,300,800,100);
	
	pillars(80,50);
	pillars(700,50);
	suspend(400,50);
	suspend(-220,50);
	suspend(1020,50);

	//boat
	fill(0,0,255);
	arc(bx,275,100,50,0,PI);
	line(bx,275,bx,225);
	fill(255);
	beginShape();
	vertex(bx - 30,235);
	vertex(bx,225);
	vertex(bx,245);
	endShape(CLOSE);

	//sun/moon

	if(time == 'D'){
		timer = timer + 1;
	}
	else {
		timer = timer - 1;
	}

	cx = cx + 2;
	bx = bx - 1;

	if(cx > 825) {
		cx = -50;
	}
	if(bx < -25) {
		bx = 850;
	}
	if(timer > 1000) {
		time = 'N';
	}
	if(timer < 0) {
		time = 'D';
	}
}