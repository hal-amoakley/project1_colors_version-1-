int frame = 800; //sets dimensions
int i;//used in for loops
int t = 100;//how ma shapes are shown per run

void settings() {
 size(frame, frame); 
  
}

void setup(){
 //size(800, 800);
 background(255,255,255);
 //the four rect and colors
 fill(0,0,255);
 rect(0,0,frame/2,frame/2);
 fill(0,255,0);
 rect(0,frame/2,frame/2,frame/2);
 fill(255,0,0);
 rect(frame/2,0,frame/2,frame/2);
 fill(200,0,255);
 rect(frame/2,frame/2,frame/2,frame/2);
}
void draw(){ 
//used for placing shapes
//start
  if(mousePressed && mouseX > frame/2 && mouseY < frame/2) {
  //background(0, 0, 255);
  fill(255, 0, 0);  
  stroke(0, 0, 255); 
  for(i = 0; i < t; i++){
  ellipse(random(frame/2,frame),random(0,frame/2),random(0,25),random(0,25));
  }
} 
else if(mousePressed && mouseX < frame/2 && mouseY < frame/2) {
  //background(255, 0, 0);
  fill(0, 0, 255);
  stroke(255, 0, 0);
  for(i = 0; i < t; i++){
  ellipse(random(0,frame/2),random(0,frame/2),random(0,25),random(0,25));
  }
} 
else if(mousePressed && mouseX > frame/2 && mouseY > frame/2) {
  //background(0, 255,0);
  fill(200,0,255);
  stroke(0, 255,0);
  for(i = 0; i < t; i++){
  ellipse(random(frame/2,frame),random(frame/2,frame),random(0,25),random(0,25));
  }
} else if (mousePressed && mouseX < frame/2 && mouseY > frame/2){
  //background(255, 255, 255);
  fill(0,255,0);
  stroke(200,0,255);
  for(i = 0; i < t; i++){
  ellipse(random(0,frame/2),random(frame/2,frame),random(0,25),random(0,25));
  }
} else if(mouseX > frame/2 && mouseY < frame/2) {
  //background(0, 0, 255);
  fill(0, 0, 255);  
  stroke(255, 0, 0);  
  
  for(i = 0; i < t; i++){
  rect(random(frame/2,frame),random(0,frame/2),random(0,25),random(0,25));
  }
} 
else if(mouseX < frame/2 && mouseY < frame/2) {
  //background(255, 0, 0);
  fill(255, 0, 0);
  stroke(0, 0, 255);
  
  for(i = 0; i < t; i++){
  rect(random(0,frame/2),random(0,frame/2),random(0,25),random(0,25));
  }
} 
else if(mouseX > frame/2 && mouseY > frame/2) {
  //background(0, 255,0);
  fill(0, 255,0);
  stroke(200,0,255);
  
  for(i = 0; i < t; i++){
  rect(random(frame/2,frame),random(frame/2,frame),random(0,25),random(0,25));
  }
}
else {
  //background(255, 255, 255);
  fill(200,0,255);
  stroke(0,255,0);
  
  for(i = 0; i < t; i++){
  rect(random(0,height/2),random(height/2,height),random(0,25),random(0,25));
  }
}
//end


//for drawing the tri and circles
noFill();
fill(0,0,0);

line(height/2,0,height/2,height);
line(0,height/2,height, height/2);
for(i=0;i<200;i++) {
noFill();
ellipse(height/2,height/2,20*i + 30,20*i + 30);  
}
for(i=0;i<5;i++) {
 triangle(0, 0 + (i*200), frame/2, 0, frame, 0+(i*200)); 
 triangle(0, 0 + (i*200), frame/2, frame, frame, 0+(i*200));
 triangle(0 + (i*200), 0, 0, frame/2, 0 + (i*200), frame); 
 triangle(0 + (i*200), 0, frame, frame/2, 0 + (i*200), frame); 
}

}
