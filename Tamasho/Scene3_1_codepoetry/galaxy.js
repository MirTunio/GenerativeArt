//credit the galaxy guy
function sgalaxy(X,Y,t, TILT, radrad, spid){
  let pi=4*atan(1);
  let stars=5000; // only ...
  let Rmax=radrad; // galaxy radius
  let speed=spid;  // rotation speed
  
  // stars follow elliptic orbits around the center
  let eratio=0.85; // ellipse ratio
  let etwist=8.0/Rmax; // twisting factor (orbit axes depend on radius)
  let angle=[];
  let radius=[];
  let cx = X; 
  let cy = Y; //center
  //let starbright = [255,255,192,]; // yellow stars
  let starbright = [255,255,220,];
  
  // itit stars
  this.itit = function() {
    for (var i=0; i< stars; i++){
      angle[i]= random(0,2*pi);
      radius[i]=random(1,Rmax);
    }
  }
  
  this.upup = function() {
    stroke(starbright);
    for (var i=0; i< stars; i++){
      r=radius[i];
      a=angle[i]+speed; // increment angle
      angle[i]=a;
      x = r*sin(a);
      y = r*eratio*cos(a);
      b = r*etwist;
      s=sin(b);
      c=cos(b);
      
      xloc = cx+s*x+c*y;
      yloc = cy+c*x-s*y;
      
      //point(xloc, cos(TILT)*yloc);
      //image(glxy, xloc, cos(TILT)*yloc);
      
      //set(xloc, cos(TILT)*yloc,color('red'));
      
      //set(xloc, cos(TILT)*yloc,color('red'));
      set(xloc+1, cos(TILT)*yloc,color('red'));
      set(xloc-1, cos(TILT)*yloc,color('red'));
      set(xloc, cos(TILT)*yloc+1,color('red'));
      set(xloc, cos(TILT)*yloc-1,color('red'));
    }
  }
  
}