// to try:
// double instances of labels
// casings instead of offsets


//offset lines
#contour.line::line[ele!=0] {
  [zoom<=12],
  [zoom>=13][zoom<=15][index=2],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16] {
    ::grn,
    ::blk {
      //line-color: #89ffb7;
      line-color: #c4ffdb;
      line-opacity:0.6;
      line-join:round;
      line-clip:false;
      //line-comp-op: dst-out;
      [zoom<=14] {
        line-width:0.5;
        [index>=5] { line-width:1; line-opacity:0.8; }
      }
      [zoom=15] {
        line-width:0.65;
        [index>=5] { line-width:1.3; line-opacity:0.8; }
      }
      [zoom=16] {
        line-width:0.8;
        [index>=5] { line-width:1.6;line-opacity:0.8; }
      }
      [zoom>=17] {
        line-width:1;
        [index>=5] { line-width:2;line-opacity:0.8; }
      }
    }
    ::blk {
      line-offset:1;
      line-color:#000;
      line-opacity:0.6;
      [zoom>=11] {
        line-width:0.75;
        [index>=5] {
          line-offset:1.2;
          line-width:1.4;
          line-opacity: 0.6;
        }
      }
    }
     ::grn[ele<=0] { line-color: spin(@poi_fill, 60); }
    /*
     [index>=10],
     [zoom>=16][index=5] {
      text-name:"[ele]+'m'";
      text-face-name:'Arial Unicode MS Regular';
      text-placement:line;
      text-fill:#fff;
      text-size:10;
      text-character-spacing: 1;
      text-avoid-edges:true;
      text-halo-fill:#fff;
      text-halo-radius:3;
      text-halo-rasterizer:fast;
      text-clip:false;
      text-comp-op: dst-out; 
      text-allow-overlap: true;
      }*/
    }
        
  }
    #contour.label::label[ele!=0] {
      [index>=10],
      [zoom>=16][index=5] {
      text-name:"[ele]+'m'";
      //text-face-name:'Arial Unicode MS Regular';
      text-face-name: @sans;
      text-placement:line;
      text-fill:@poi_fill;
      text-size:10;
      text-character-spacing: 1;
      text-avoid-edges:true;
      text-halo-fill:fadeout(#000,93);
      text-halo-radius:3;
      text-halo-rasterizer:fast;
      text-clip:false;
      //text-allow-overlap: true;
    [ele<=0] { text-fill: spin(@poi_fill, 60); text-dy: -1; }
        
      }
    }
  

/*
//offset lines with cookie cutter labels
#contour.line::line[ele != 0] {
  [zoom<=12],
  [zoom>=13][zoom<=15][index=2],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16] {
    ::wht,
    ::blk {
      line-color: #fff;
      line-opacity:0.5;
      line-join:round;
      //line-comp-op: dst-out;
      [zoom<=14] {
        line-width:0.5;
        [index>=5] { line-width:1; line-opacity:0.5; }
      }
      [zoom=15] {
        line-width:0.65;
        [index>=5] { line-width:1.3; line-opacity:0.5;}
      }
      [zoom=16] {
        line-width:0.8;
        [index>=5] { line-width:1.6;line-opacity:0.5; }
      }
      [zoom>=17] {
        line-width:1;
        [index>=5] { line-width:2;line-opacity:0.5; }
      }
    }
    ::blk {
      line-offset:1;
      line-color:#000;
      line-opacity:0.2;
      [zoom>=11] {
        line-width:0.75;
        [index>=5] {
          line-offset:1.2;
          line-width:1.4;
          line-opacity: 0.3;
        }
      }
    }
     [index>=5] {
      text-name:"[ele]+'m'";
      text-face-name:'Arial Unicode MS Regular';
      text-placement:line;
      text-fill:#fff;
      text-size:10;
      text-character-spacing: 1;
      text-avoid-edges:true;
      text-halo-fill:#fff;
      text-halo-radius:3;
      text-halo-rasterizer:fast;
      text-clip:false;
      text-comp-op: dst-out; 
      text-allow-overlap: true;
      }
    }
        
  }
    #contour.label::label[ele!=0] {
      [index>=5] {
      text-name:"[ele]+'m'";
      text-face-name:'Arial Unicode MS Regular';
      text-placement:line;
      text-fill:#fff;
      text-size:10;
      text-character-spacing: 1;
      text-avoid-edges:true;
      text-halo-fill:fadeout(#000,93);
      text-halo-radius:2.5;
      text-halo-rasterizer:fast;
      text-clip:false;
      text-allow-overlap: true;
        
      }
    }
  
 */

/*
 // unfinished style for casings 
#contour[ele != 0] {
  [zoom<=12],
  [zoom>=13][zoom<=15][index=2],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16] {
    ::blk,
    ::wht {
      line-color: rgba(0,0,0,0.75);
      line-opacity:0.5;
      line-join:round;
      [zoom<=14] {
        line-width:1;
        [index>=5] { line-width:2; }
      }
      [zoom=15] {
        line-width:1.65;
        [index>=5] { line-width:2.3; }
      }
      [zoom=16] {
        line-width:1.8;
        [index>=5] { line-width:2.6; }
      }
      [zoom>=17] {
        line-width:2;
        [index>=5] { line-width:4; }
      }
    }
    ::wht {
      //line-offset:1;
      line-color:#fff;
      line-opacity:1;
     [zoom<=14] {
        line-width:0.5;
        [index>=5] { line-width:1; }
      }
      [zoom=15] {
        line-width:0.65;
        [index>=5] { line-width:1.3; }
      }
      [zoom=16] {
        line-width:0.8;
        [index>=5] { line-width:1.6; }
      }
      [zoom>=17] {
        line-width:1;
        [index>=5] { line-width:2; }
      }
     }
    ::label
    [zoom<=12][index>=5],
    [zoom>=13][zoom<=15][index=10],
    [zoom>=16][index>=5] {
      text-name:"[ele]+' m'";
      text-face-name:'Arial Unicode MS Regular';
      text-placement:line;
      text-fill:#fff;
      text-size:11;
      text-avoid-edges:true;
      text-halo-fill:fadeout(#000,88);
      text-halo-radius:2.5;
      text-halo-rasterizer:fast;
      text-clip:false;
    }
  }
}
*/

/*
// Original ported from original repo, offset lines
#contour[ele != 0] {
  [zoom<=12],
  [zoom>=13][zoom<=15][index=2],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16] {
    ::wht,
    ::blk {
      line-color: #fff;
      line-opacity:0.8;
      line-join:round;
      [zoom<=14] {
        line-width:0.5;
        [index>=5] { line-width:1; }
      }
      [zoom=15] {
        line-width:0.65;
        [index>=5] { line-width:1.3; }
      }
      [zoom=16] {
        line-width:0.8;
        [index>=5] { line-width:1.6; }
      }
      [zoom>=17] {
        line-width:1;
        [index>=5] { line-width:2; }
      }
    }
    ::blk {
      line-offset:1;
      line-color:#000;
      line-opacity:0.45;
      [zoom>=11] {
        line-width:0.75;
        [index>=5] {
          line-offset:1.2;
          line-width:1.4;
        }
      }
    }
    ::label
    [zoom<=12][index>=5],
    [zoom>=13][zoom<=15][index=10],
    [zoom>=16][index>=5] {
      text-name:"[ele]+' m'";
      text-face-name:'Arial Unicode MS Regular';
      text-placement:line;
      text-fill:#fff;
      text-size:11;
      text-avoid-edges:true;
      text-halo-fill:fadeout(#000,88);
      text-halo-radius:2.5;
      text-halo-rasterizer:fast;
      text-clip:false;
    }
  }
}*/