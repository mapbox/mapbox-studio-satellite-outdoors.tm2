// =====================================================================
// CONTOUR LINES
// =====================================================================

//offset lines
#contour[index!=-1] {
  ::grn,
  ::blk {
    line-color: #c4ffdb;
    line-opacity: 0.4;
    line-join: round;
    line-clip: false;
    [zoom<=14] {
      line-width: 0.5;
      [index>=5] { line-width: 1; line-opacity: 0.5; }
    }
    [zoom=15] {
      line-width: 0.65;
      [index>=5] { line-width: 1.3; line-opacity: 0.4; }
    }
    [zoom>=16] {
      line-width: 0.8;
      [index>=5] { line-width: 1.6; line-opacity: 0.4; }
    }
  }
  ::blk {
    line-offset: 1;
    line-color: #000;
    line-opacity: 0.6;
    [zoom=15] {
      [index>5] { line-offset: 1.3; }
    }
    [zoom>=16] {
      line-opacity: 0.5;
      [index>5] { line-offset: 1.5; line-opacity: 0.5; }
    }
  }
   ::grn[ele<=0] { line-color: spin(@poi_fill, 60); }    
}
   
// =====================================================================
// CONTOUR LABELS
// =====================================================================

#contour::label {
  [zoom<=12][index>=5],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16][index>=5] {
    text-name: "[ele]+' m'";
    text-face-name: @sans;
    text-placement: line;
    text-fill: @poi_fill;
    text-size: 10;
    text-character-spacing: 1;
    text-avoid-edges: true;
    text-repeat-distance: 200;
    text-margin: 5;
    text-halo-fill: fadeout(#333, 90);
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-clip:false;
    [ele<=0] { text-fill: spin(@poi_fill, 60); text-dy: -1; }
    }
  }