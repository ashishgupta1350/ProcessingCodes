//https://me.ucsb.edu/~moehlis/APC591/tutorials/tutorial7/node2.html
float[] distribution = new float[360];
float []dw=new float[360];
float []w=new float[360];
float T=1;
float N=360;
float dt=T/N;
int index=1;
void setup() {
  size(500, 500);
  background(204);
  for (int i = 0; i < distribution.length; i++) {
    distribution[i] = (int(randomGaussian())*500); // generates a norrmal distribution of numbers
  }
  // set up for brownian motion / weiner process
  dw[0]=1;
  w[0]=0;
  dw[1]=sqrt(dt)*distribution[0];
  w[1]=dw[1];
  frameRate(60); // time increments of 5 / second
  translate(0,height/2);
  rotate(PI/180); // now the addition means comming up, earlier is meant going down
}
float currentIndexState=0;
void draw() {
  translate(0,height/2);
  //rotate(PI); // now the addition means comming up, earlier is meant going down
  //background(204);
  index=(index+1)%360;
  
  if(index==0){
    index=2;
    currentIndexState+=1;
  }
  // each time the index is increased 
  dw[index]=sqrt(dt)*distribution[index];
  w[index]=w[index-1] + dw[index];
  println(index);
  line((index-1)+pow(360,currentIndexState),w[index-1],index+pow(360,currentIndexState),w[index]);
  
}
