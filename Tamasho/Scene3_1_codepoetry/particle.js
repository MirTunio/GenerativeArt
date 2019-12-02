function Particle(x, y, rad, til, vel, tdisp, stk, ranran, trailen) {
  this.x = x;
  this.y = y;
  this.t = radians(tdisp);
  this.vel = vel;
  this.rad = rad;
  this.til = til;
  
  this.stk = stk;
  
  if(stk == 'BLACKHO'){
    this.useSprite = true;
  } else if(stk == 'WHITEHO'){
    this.useSprite = true;
  } else if(stk == 'BASE'){
    this.useSprite = true;
  } else if(stk == 'POLE'){
    this.useSprite = true;
  } else if(stk == 'tsvr'){
    this.useSprite = true;
  } else if(stk == 'twht'){
    this.useSprite = true;
  } else if(stk == 'tgld'){
    this.useSprite = true;
  }
  
  
  this.ranran = ranran;
  this.trailen = trailen;
  
  this.history = [];
  
  this.update = function() {
    this.xd = this.rad*sin(this.t);
    this.yd = cos(radians(this.til))*rad*cos(this.t);
    this.t += this.vel;
    
    if(ranran == true){
      // TO DO: Change this to pnoise slow
      for (var i = 0; i < this.history.length; i++) {
        this.history[i].x += random(-0.5, 0.5);
        this.history[i].y += random(-0.5, 0.5);
      }
    }

    var v = createVector(this.x + this.xd, this.y + this.yd);
    this.history.push(v); 
    if (this.history.length > trailen) { //60
      this.history.splice(0, 1);
    }
  }
  
  this.show = function() {
    //noStroke();
    //fill(stk);
    //ellipse(this.x + this.xd, this.y + this.yd, 4, 4);
    //noFill();
    
    if(this.useSprite == true){
      //if(this.stk == 'BLACKHO'){
      //  image(bkho,this.x + this.xd, this.y + this.yd)
      //} else if(this.stk == 'WHITEHO'){
      //  image(wtho,this.x + this.xd, this.y + this.yd)
      //} else if(this.stk == 'BASE'){
      //  image(base,this.x + this.xd, this.y + this.yd)
      //} else if(this.stk == 'POLE'){
      //  image(pole,this.x + this.xd, this.y + this.yd)
      //} else if(this.stk == 'tgld'){
      //  image(tgld,this.x + this.xd, this.y + this.yd)
      //} else if(this.stk == 'tsvr'){
      //  image(tsvr,this.x + this.xd, this.y + this.yd)
      //} else if(this.stk == 'twht'){
      //  image(twht,this.x + this.xd, this.y + this.yd)
      //}
      
      set(this.x + this.xd, this.y + this.yd);
      set(this.x + this.xd+1, this.y + this.yd);
      set(this.x + this.xd-1, this.y + this.yd);
      
    } else {
      stroke(stk);
      strokeWeight(4);
      point(this.x + this.xd, this.y + this.yd);
      noFill();
      noStroke();
    
      for (var i = 0; i < this.history.length-1; i++) {
        var pos1 = this.history[i]; 
        var pos2 = this.history[i+1];
        stroke(this.stk[0], this.stk[1], this.stk[2], 255*i/this.history.length); 
        strokeCap(SQUARE);
        strokeWeight(3);
        line(pos1.x,pos1.y,pos2.x,pos2.y);
      }
    }
    
    
  }
  
}