// =====================================================================
// ADMIN BOUNDARIES
// =====================================================================

#admin[zoom>=2] {
  ::lev2off[admin_level=2][maritime=0] {
    opacity: 0.5;
    line-join: round;
    line-color: @place_halo;
    line-offset: 1;
    [zoom>=2] { line-width: 0.4; }
    [zoom>=4] { line-width: 0.8; }
    [zoom>=6] { line-width: 1.2; }
    [zoom>=8] { line-width: 1.8; line-offset: 1.8; }
    [zoom>=10] { line-width: 2.2; }
    [zoom>=12] { line-width: 2.6; }
    [zoom>=14] { line-width: 3.0; }
    [zoom>=16] { line-width: 4.0; line-offset: 2.5; }
    [disputed=1][zoom<=5] { line-dasharray: 4 , 3; }
    [disputed=1][zoom>=6][zoom<=7] { line-dasharray: 5 , 3; }
    [disputed=1][zoom>=8][zoom<=9] { line-dasharray: 7 , 4; }
    [disputed=1][zoom>=10][zoom<=11] { line-dasharray: 9 , 5; }
    [disputed=1][zoom>=12][zoom<=13] { line-dasharray: 11 , 6; }
    [disputed=1][zoom>=14][zoom<=15] { line-dasharray: 13 , 7; }
    [disputed=1][zoom>=16] { line-dasharray: 15 , 8; }
  }
  ::lev2[admin_level=2] {
    opacity: 0.8;
    line-join: round;
    line-color: #fff;
    [maritime=1] {
      line-opacity: 0.05;
  }
    [zoom>=2] { line-width: 0.4; }
    [zoom>=4] { line-width: 0.8; }
    [zoom>=6] { line-width: 1.2; }
    [zoom>=8] { line-width: 1.8; }
    [zoom>=10] { line-width: 2.2; }
    [zoom>=12] { line-width: 2.6; }
    [zoom>=14] { line-width: 3.0; }
    [zoom>=16] { line-width: 4.0; }
    [disputed=1][zoom<=5] { line-dasharray: 4 , 3; }
    [disputed=1][zoom>=6][zoom<=7] { line-dasharray: 5 , 3; }
    [disputed=1][zoom>=8][zoom<=9] { line-dasharray: 7 , 4; }
    [disputed=1][zoom>=10][zoom<=11] { line-dasharray: 9 , 5; }
    [disputed=1][zoom>=12][zoom<=13] { line-dasharray: 11 , 6; }
    [disputed=1][zoom>=14][zoom<=15] { line-dasharray: 13 , 7; }
    [disputed=1][zoom>=16] { line-dasharray: 15 , 8; }
  }
    // States / Provices / Subregions
  ::lev34off[admin_level>=3][maritime=0] {
    line-color: @place_halo;
    line-width: 1;
    line-dasharray: 10,3,3,3;
    line-opacity: 0.25;
    line-offset: 1; 
    [zoom>=6] { 
      line-width: 1.5; 
    }
    [zoom>=8] { line-width: 2; }
    [zoom>=9] { 
      line-opacity: 0.5;
    }
  }
  ::lev34[admin_level>=3] {
    line-color: #fff;
    line-width: 1;
    line-dasharray: 10,3,3,3;
    line-opacity: 0.25;
    [maritime=1] {
      line-opacity: 0.05;
    }  
    [zoom>=6] { 
      line-width: 1.5; 
    }
    [zoom>=8] { line-width: 2; }
    [zoom>=9] { 
      line-opacity: 0.5;
      [maritime=1] {
      line-opacity: 0.05;
      }  
    }
    [zoom>=13] { line-opacity: 0.8; }
  }
}

// =====================================================================
// MARINE LABELS
// =====================================================================

#marine_label[zoom>=2]["mapnik::geometry_type"=1],
#marine_label[zoom>=2]["mapnik::geometry_type"=2] {
  text-name: @name;
  text-face-name: @sans_lt_italic;
  text-fill: @marine_text;
  text-wrap-width: 80;
  text-wrap-before: true;
  ["mapnik::geometry_type"=1] {
    text-placement: point;
    text-wrap-width: 30;
  }
  ["mapnik::geometry_type"=2] {
    text-placement: line;
  }
  [labelrank = 1] {
    [zoom = 3] {
      text-size: 20;
      text-character-spacing: 8;
      text-line-spacing: 16;
    }
    [zoom = 4] {
      text-size: 25;
      text-character-spacing: 16;
      text-line-spacing: 24;
    }
    [zoom = 5] {
      text-size: 30;
      text-character-spacing: 20;
      text-line-spacing: 32;
    }
  }
  [labelrank = 2] {
    [zoom = 3] {
      text-size: 13;
      text-character-spacing: 1;
      text-line-spacing: 6;
    }
    [zoom = 4] {
      text-size: 14;
      text-character-spacing: 2;
      text-line-spacing: 8;
    }
    [zoom = 5] {
      text-size: 20;
      text-character-spacing: 4;
      text-line-spacing: 8;
    }
    [zoom = 6] {
      text-size: 24;
      text-character-spacing: 5;
      text-line-spacing: 10;
    }
  }
  [labelrank = 3] {
    [zoom = 3] {
      text-size: 12;
      text-character-spacing: 2;
      text-line-spacing: 3;
    }
    [zoom = 4] {
      text-size: 13;
      text-character-spacing: 3;
      text-line-spacing: 8;
    }
    [zoom = 5] {
      text-size: 15;
      text-character-spacing: 4;
      text-line-spacing: 8;
    }
    [zoom = 6] {
      text-size: 18;
      text-character-spacing: 5;
      text-line-spacing: 10;
    }
  }
  [labelrank = 4][zoom = 4],
  [labelrank = 5][zoom = 5],
  [labelrank = 6][zoom = 6] {
    text-size: 12;
    text-character-spacing: 2;
    text-line-spacing: 6;
  }
  [labelrank = 4][zoom = 5],
  [labelrank = 5][zoom = 6],
  [labelrank = 6][zoom = 7] {
    text-size: 14;
    text-character-spacing: 3;
    text-line-spacing: 8;
  }
  [labelrank = 4][zoom = 6],
  [labelrank = 5][zoom = 7] {
    text-size: 16;
    text-character-spacing: 4;
    text-line-spacing: 1;
  }
}

// =====================================================================
// PLACE NAMES
// =====================================================================

// Countries _____________________________________________________

// these styles assume usage of custom admin_label tables.
#country_label[zoom>=2][zoom<=10] {
  text-name: @name;
  text-face-name: @sans_bold;
  text-placement: point;
  [zoom=2] { text-face-name: @sans; }
  text-size: 10;
  text-fill: @place_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-halo-comp-op: minus;
  text-wrap-width: 30;
  text-margin: 2;
  [scalerank=1] {
    [zoom=2]  { text-size: 12; text-wrap-width: 60; }
    [zoom=3]  { text-size: 13; text-wrap-width: 60; }
    [zoom=4]  { text-size: 14; text-wrap-width: 90; }
    [zoom=5]  { text-size: 20; text-wrap-width: 120; }
    [zoom>=6] { text-size: 20; text-wrap-width: 120; }
  }
  [scalerank=2] {
    [zoom=3]  { text-size: 12; }
    [zoom=4]  { text-size: 13; }
    [zoom=5]  { text-size: 17; }
    [zoom>=6] { text-size: 20; }
  }
  [scalerank=3] {
    [zoom=4]  { text-size: 11; }
    [zoom=5]  { text-size: 15; }
    [zoom=6]  { text-size: 17; }
    [zoom=7]  { text-size: 18; text-wrap-width: 60; }
    [zoom>=8] { text-size: 20; text-wrap-width: 120; }
  }
  [scalerank=4] {
    [zoom=5] { text-size: 13; }
    [zoom=6] { text-size: 15; text-wrap-width: 60  }
    [zoom=7] { text-size: 16; text-wrap-width: 90; }
    [zoom=8] { text-size: 18; text-wrap-width: 120; }
    [zoom>=9] { text-size: 20; text-wrap-width: 120; }
  }
  [scalerank=5] {
    [zoom=5] { text-size: 12; }
    [zoom=6] { text-size: 13; }
    [zoom=7] { text-size: 14; text-wrap-width: 60; }
    [zoom=8] { text-size: 16; text-wrap-width: 90; }
    [zoom>=9] { text-size: 18; text-wrap-width: 120; }
  }
  [scalerank>=6] {
    [zoom=6] { text-size: 11; }
    [zoom=7] { text-size: 12; }
    [zoom=8] { text-size: 14; }
    [zoom>=9] { text-size: 16; }
  }
}

// States ________________________________________________________

#state_label[zoom>=4][zoom<=10] {
  text-name: [abbr];
  text-face-name: @sans_lt;
  text-placement: point;
  text-fill: @place_text;
  text-size: 10;
  text-opacity: 0.9;
  text-halo-fill: @state_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-halo-comp-op: minus;
  text-margin: 2;
  [zoom>=4][area>100000],
  [zoom>=5][area>50000],
  [zoom>=6][area>10000],
  [zoom>=7][area<=10000] {
    text-name: [abbr];
  }
  [zoom>=5][area>100000],
  [zoom>=6][area>50000],
  [zoom>=7][area>10000],
  [zoom>=8][area<=10000] {
    text-name: @name;
  }
  [zoom>=5][zoom<=6] {
    [area>10000] { text-size: 12; }
    [area>50000] { text-size: 14; }
    text-wrap-width: 40;
  }
  [zoom>=7][zoom<=8] {
    text-size: 14;
    [area>50000] { text-size: 16; text-character-spacing: 1; }
    [area>100000] { text-size: 18; text-character-spacing: 3; }
    text-wrap-width: 60;
  }
  [zoom>=9][zoom<=10] {
    text-size: 16;
    text-character-spacing: 2;
    [area>50000] { text-size: 18; text-character-spacing: 2; }
    text-wrap-width: 100;
  }
}

// Cities ________________________________________________________

// City labels with dots for low zoom levels.
// The separate attachment keeps the size of the XML down.
#place_label::citydots[type='city'][zoom>=4][zoom<=7][localrank<=1] {
  // explicitly defining all the `ldir` values wer'e going
  // to use shaves a bit off the final project.xml size
  [ldir='N'],[ldir='S'],[ldir='E'],[ldir='W'],
  [ldir='NE'],[ldir='SE'],[ldir='SW'],[ldir='NW'] {
    text-name: @name;
    text-size: 11;
    [scalerank>=0][scalerank<=1] {
      [zoom=5] { text-size: 13; marker-width: 5; }
      [zoom>=6] { text-size: 14; marker-width: 6; }
    }
    [scalerank>=2][scalerank<=3] {
      [zoom=5] { text-size: 11; }
      [zoom=6] { text-size: 12; marker-width: 5; }
      [zoom=7] { text-size: 13; marker-width: 6; }
    }
    [scalerank>=4][scalerank<=5] {
      [zoom=6] { text-size: 11; }
      [zoom=7] { text-size: 12; marker-width: 5; }
    }
    text-face-name: @sans;
    text-placement: point;
    text-fill: @place_text;
    text-halo-fill: @city_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-halo-comp-op: minus;
    text-margin: 2;
    [ldir='E'] { text-dx: 4; }
    [ldir='W'] { text-dx: -4; }
    [ldir='N'] { text-dy: -4; }
    [ldir='S'] { text-dy: 4; }
    [ldir='NE'] { text-dx: 3; text-dy: -3; }
    [ldir='SE'] { text-dx: 3; text-dy: 3; }
    [ldir='SW'] { text-dx: -3; text-dy: 3; }
    [ldir='NW'] { text-dx: -3; text-dy: -3; }
    marker-width: 4;
    marker-fill: @place_text;
    marker-line-width: 1;
    marker-line-color: rgba(0,0,0,0.5);
  }
}
  
// For medium to high zoom levels we do away with the dot
// and center place labels on their point location.
#place_label[type='city'][zoom>=8][zoom<=15][localrank<=1] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @place_text;
  text-halo-fill: @city_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-halo-comp-op: minus;
  text-line-spacing: -4;
  text-wrap-width: 40;
  text-margin: 5;
  // We keep the scalerank filters the same for each zoom level.
  // This is slightly inefficient-looking CartoCSS, but it saves
  // some space in the project.xml
  [zoom=8] {
    text-size: 13;
    text-wrap-width: 60;
    [scalerank>=0][scalerank<=1] { text-size: 18; }
    [scalerank>=2][scalerank<=3] { text-size: 16; }
    [scalerank>=4][scalerank<=5] { text-size: 15; }
    [scalerank>=6] { text-size: 13; }
  }
  [zoom=9] {
    text-size: 14;
    text-wrap-width: 60;
    [scalerank>=0][scalerank<=1] { text-size: 19; }
    [scalerank>=2][scalerank<=3] { text-size: 17; }
    [scalerank>=4][scalerank<=5] { text-size: 16; }
    [scalerank>=6] { text-size: 14; }
  }
  [zoom=10] {
    text-size: 15;
    text-wrap-width: 70;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 19; }
    [scalerank>=4][scalerank<=5] { text-size: 17; }
    [scalerank>=6] { text-size: 15; }
  }
  [zoom=11] {
    text-size: 16;
    text-wrap-width: 80;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 19; }
    [scalerank>=4][scalerank<=5] { text-size: 17; }
    [scalerank>=6] { text-size: 16; }
  }
  [zoom=12] {
    text-size: 17;
    text-wrap-width: 100;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 19; }
    [scalerank>=4][scalerank<=5] { text-size: 18; }
    [scalerank>=6] { text-size: 17; }
  }
  [zoom=13] {
    text-size: 18;
    text-wrap-width: 200;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 19; }
    [scalerank>=4][scalerank<=5] { text-size: 19; }
    [scalerank>=6] { text-size: 17; }
  }
  [zoom=14] {
    text-size: 19;
    text-wrap-width: 300;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 20; }
    [scalerank>=4][scalerank<=5] { text-size: 19; }
    [scalerank>=6] { text-size: 18; }
  }
  [zoom=15] {
    text-size: 20;
    text-wrap-width: 400;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 20; }
    [scalerank>=4][scalerank<=5] { text-size: 20; }
    [scalerank>=6] { text-size: 19; }
  }
}

// Towns _________________________________________________________

#place_label[type='town'][zoom>=8][zoom<=17][localrank<=1] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @place_text;
  text-halo-fill: @town_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-halo-comp-op: minus;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-line-spacing: -4;
  text-margin: 5;
  text-avoid-edges:	true;
  text-size: 12;
  [zoom>=11] { text-size: 14; }
  [zoom>=12] { text-size: 15; text-wrap-width: 80; }
  [zoom>=13] { text-size: 16; text-wrap-width: 120; }
  [zoom>=14] { text-size: 18; text-wrap-width: 160; }
  [zoom>=15] { text-size: 20; text-wrap-width: 200; }
  [zoom>=16] { text-size: 22; text-wrap-width: 240; }
}

// Villages ______________________________________________________

#place_label[type='village'][zoom>=10][zoom<=17][localrank<=1] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @place_text;
  text-size: 11;
  text-halo-fill: @village_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-halo-comp-op: minus;
  text-line-spacing: -4;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-margin: 5;
  [zoom>=12] { text-size: 12; }
  [zoom>=13] { text-wrap-width: 80; }
  [zoom>=14] { text-size: 14; text-wrap-width: 100; }
  [zoom>=15] { text-size: 16; text-wrap-width: 120; }
  [zoom>=16] { text-size: 18; text-wrap-width: 160; }
  [zoom=17] { text-size: 20; text-wrap-width: 200; }
}

// Hamlets ______________________________________

#place_label[zoom>=13][zoom<=18][localrank<=1] {
  [type='hamlet'] {
    text-name: @name;
    text-face-name: @sans;
    text-placement: point;
    text-fill: @place_text;
    text-size: 11;
    text-halo-fill: @village_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-line-spacing: -2;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-margin: 2;
    [zoom>=13] { text-wrap-width: 80; }
    [zoom>=14] { text-size: 12; text-wrap-width: 80; }
    [zoom>=16] { text-size: 14; text-wrap-width: 100; }
    [zoom>=17] { text-size: 16; text-wrap-width: 130; }
    [zoom>=18] { text-size: 18; text-wrap-width: 160; }
  }
}

// Suburbs _______________________________________________________

#place_label[type='suburb'][zoom>=12][zoom<=17][localrank<=1] {
  text-name: @name;
  text-face-name: @sans;
  text-transform: uppercase;
  text-placement: point;
  text-fill: @place_text;
  text-size: 11;
  text-character-spacing: 1.5;
  text-halo-fill: @neigh_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-line-spacing: -2;
  text-wrap-width: 80;
  text-wrap-before: true;
  text-margin: 2;
  [zoom>=13] { text-size: 12; }
  [zoom>=14] { text-size: 13; text-wrap-width: 80; }
  [zoom>=15] { text-size: 14; text-wrap-width: 120; }
  [zoom>=16] { text-size: 16; text-wrap-width: 160; }
  [zoom>=17] { text-size: 20; text-wrap-width: 200; }
}

// Neighbourhoods ______________________________________

#place_label[zoom>=13][zoom<=18][localrank<=1] {
  [type='neighbourhood'] {
    text-name: @name;
    text-face-name: @sans;
    text-transform:	uppercase;
    text-placement: point;
    text-fill: @place_text;
    text-size: 10;
    text-character-spacing:	2;
    text-halo-fill: @neigh_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-line-spacing: -2;
    text-wrap-width: 80;
    text-wrap-before: true;
    text-margin: 2;
    [zoom>=14] { text-size: 11; text-wrap-width: 80; }
    [zoom>=15] { text-size: 13; text-wrap-width: 80; }
    [zoom>=16] { text-size: 14; text-wrap-width: 100; }
    [zoom>=17] { text-size: 16; text-wrap-width: 130; }
    [zoom>=18] { text-size: 18; text-wrap-width: 160; }
  }
}

// =====================================================================
// ROAD LABELS
// =====================================================================

// highway shields

// highway shield

#road_label::shield-pt[class='motorway'][zoom>=7][zoom<=10][localrank=1][reflen<=6],
#road_label::shield-pt[class='motorway'][zoom>=9][zoom<=10][localrank=1][reflen<=6],
#road_label::shield-ln[zoom>=11][reflen<=6] {
  shield-name: "[ref].replace('·', '\n')";
  shield-size: 9;
  shield-line-spacing: -4;
  shield-file: url('img/shield/[shield]-[reflen].svg');
  shield-face-name: @sans_bold;
  shield-fill: #000;
  [zoom>=14] {
    shield-transform: scale(1.25,1.25);
    shield-size: 11;
  }
}
#road_label::shield-pt[class='motorway'][zoom>=7][zoom<=10][localrank=1][reflen<=6],
#road_label::shield-pt[class='motorway'][zoom>=9][zoom<=10][localrank=1][reflen<=6] {
  shield-placement: point;
  shield-avoid-edges: false;
}
#road_label::shield-ln[zoom>=11][reflen<=6] {
  shield-placement: line;
  shield-spacing: 400;
  shield-min-distance: 100;
  shield-avoid-edges: true;
}

// regular labels
#road_label['mapnik::geometry_type'=2] {
  // Longer roads get a label earlier as they are likely to be more
  // important. This especially helps label density in rural/remote areas.
  // This z14 filter is *not* redundant to logic in SQL queries. Because z14
  // includes all data for z14+ via overzooming, the streets included in a
  // z14 vector tile include more features than ideal for optimal performance.
  [class='motorway'][zoom>=14],
  [class='main'][zoom>=15][len>2000],
  [class='main'][zoom>=16],
  [class='street'][zoom>=16][len>1000],  
  [class='street'][zoom>=17][len>500],   
  [class='street'][zoom>=18],
  [class='street_limited'][zoom>=19] {
    text-avoid-edges: true;
    text-name: [name];
    text-placement: line;
    text-face-name: @sans;
    text-fill: @road_text;
    text-transform:	uppercase;
    text-size: 9;
    text-character-spacing:	2;
    text-halo-fill: @road_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-repeat-distance: 200; // only for labels w/ the same name
    text-margin: 2;
    [zoom>=18] { text-size: 10; }
    [class='motorway'],
    [class='main'] {
    [zoom>=16] { text-size: 10; }
    [zoom>=17] { text-size: 11; }
    [zoom>=18] { text-size: 12; }
    }
   }
  }

// =====================================================================
// 4__ WATER LABELS
// =====================================================================

#water_label {
  [zoom<=15][area>200000],
  [zoom=16][area>50000],
  [zoom=17][area>10000],
  [zoom>=18][area>0]{
    text-name: @name;
    text-face-name: @sans_italic;
    text-fill: @place_text;
    text-opacity: 0.5;
    text-halo-fill: @water_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-halo-comp-op: minus;
    text-line-spacing: -2;
    text-wrap-width: 50;
    text-wrap-before: true;
    text-margin: 2; 
    text-size: 11;
  }
  [zoom>=14][area>3200000],
  [zoom>=15][area>800000],
  [zoom>=16][area>200000],
  [zoom>=17][area>50000],
  [zoom>=18][area>10000] {
    text-size: 12;
    text-wrap-width: 75;
  }
  [zoom>=15][area>3200000],
  [zoom>=16][area>800000],
  [zoom>=17][area>200000],
  [zoom>=18][area>50000] {
    text-size: 14;
    text-wrap-width: 100;
  }
  [zoom>=16][area>3200000],
  [zoom>=17][area>800000],
  [zoom>=18][area>200000] {
    text-size: 16;
    text-wrap-width: 125;
  }
  [zoom>=17][area>3200000],
  [zoom>=18][area>800000] {
    text-size: 18;
    text-wrap-width: 150;
  }
}

#waterway_label[type='river'][zoom>=12],
#waterway_label[type='canal'][zoom>=14],
#waterway_label[type='stream'][zoom>=16] {
  text-avoid-edges: true;
  text-name: @name;
  text-face-name: @sans_italic;
  text-fill: @place_text;
  text-opacity: 0.5;
  text-character-spacing: 0.5;
  text-halo-fill: @water_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-halo-comp-op: minus;
  text-placement: line;
  text-margin: 2;
  text-size: 9;
  [type='river'][zoom=14],
  [type='canal'][zoom=16],
  [type='stream'][zoom>=18] {
    text-size: 10;
  }
  [type='river'][zoom=15],
  [type='canal'][zoom>=17] {
    text-size: 11;
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom>=18] {
    text-size: 12;
    text-spacing: 300;
  }
}

// =====================================================================
// POI LABELS
// =====================================================================

// Parks ______________________________________________________

#poi_label[maki='park'][scalerank<=3][localrank<=1] { 
  [zoom<14],
  [zoom>=14][scalerank<=1][localrank<=1],
  [zoom>=16][scalerank<=2][localrank<=1],
  [zoom>=17][scalerank<=3][localrank<=1] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-size: 10;
    text-character-spacing: 0.25;
    text-fill:  @poi_fill;
    text-halo-fill: @poi_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-line-spacing: -2;
    text-wrap-width: 80;
    text-wrap-before: true;
    text-avoid-edges: true;
    text-dy: 12;
    [zoom>=16] {
      text-size: 11;
      }
     [zoom>=17] {
      text-size: 12;
      text-wrap-width: 90;
      }
    [zoom>=18] {
      text-size: 13;
      text-wrap-width: 95;
      }
    marker-file: url("img/maki/park-18.svg");
    marker-fill: @poi_fill;
  }
}

// Mountain peaks ______________________________________________________

#poi_label[type='Peak'] {
  marker-file: url("img/maki/triangle-12.svg"); 
  marker-fill: @poi_fill;
  text-name: @name;
  text-face-name: @sans_bold;
  text-size: 10;
  text-character-spacing: 0.25;
  text-wrap-width: 30;
  text-fill: @poi_fill;
  text-halo-fill: @poi_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-dy: 12;
  [zoom>=15] { 
    text-size: 11; 
    text-dy: 8; 
    text-wrap-width: 35;}
  [zoom>=17] { 
    text-size: 12; 
    text-dy: 9; 
    text-wrap-width: 40;}
  [zoom>=19] { 
      text-size: 13; 
      text-dy: 11; 
      text-wrap-width: 45;
      marker-file: url("img/maki/triangle-18.svg");
    }
}

// Airports ______________________________________________________

#poi_label[type='Aerodrome'][zoom>=11] {
  marker-file: url("img/airport/[maki]-12.svg");
  text-name: "''";
  text-size: 10;
  text-fill: @place_text;
  text-halo-fill: @poi_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-face-name: @sans_bold;
  text-character-spacing: 0.25;
  text-line-spacing: -2;
  text-placement-type: simple;
  text-placements: "S,N,E,W";
  text-dx: 8; text-dy: 8;
  [zoom>=11][zoom<=13][scalerank=1],
  [zoom>=12][zoom<=13][scalerank=2] {
    text-name: [ref];
  }
  [zoom>=14] {
    text-name: @name;
    text-wrap-before: true;
  }
  [zoom>=11][scalerank=1],
  [zoom>=12][scalerank=2],
  [zoom>=14] {
    marker-file: url("img/airport/[maki]-18.svg");
    text-size: 10;
    text-dx: 12; text-dy: 12;
    text-wrap-width: 80;
  }
  [zoom>=13][scalerank=1],
  [zoom>=14][scalerank=2],
  [zoom>=15] {
    marker-file: url("img/airport/[maki]-24.svg");
    text-size: 12;
    text-dx: 15; text-dy: 15;
    text-wrap-width: 100;
  }
  [zoom>=14][scalerank=1],
  [zoom>=15][scalerank=2] {
    text-size: 14;
    text-dx: 19; text-dy: 19;
    text-wrap-width: 120;
  }
}

// Rail (not subway or light) ___________________________________________

#poi_label[type='Rail Station'][network='rail'] {
  marker-file: url("img/rail/rail-12.svg");
  marker-height: 12;
  [zoom>15] {
    marker-file: url("img/rail/rail-18.svg");
    marker-height: 18;
    text-name: @name;
    text-face-name: @sans_bold;
    text-character-spacing: 1;
    text-fill: @place_text;
    text-halo-fill: @poi_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 11;
    text-wrap-width: 80;
    text-line-spacing: -2;
    text-dy: 11;
    [zoom>=17] {
      text-size: 12;
      text-dy: 15;
    }
  }
}

// Scalerank 1 & 2 ______________________________________________________

#poi_label[type!='Peak']
[type!='Aerodrome']
[maki!='park']
[type!='Rail Station']
[scalerank<=2] {
  [scalerank=1],
  [scalerank=2][zoom>=15] {  
  text-name: @name;
  text-face-name: @sans_bold;
  text-size: 10;
  text-character-spacing: 0.25;
  text-line-spacing: -2;
  text-wrap-width: 50;
  text-fill: @place_text;
  text-halo-fill: @poi_halo;
  text-halo-radius: 2.5;
  text-halo-rasterizer: fast;
  [zoom>=15] { 
    text-size: 11; 
    text-wrap-width: 55;}
  [zoom>=17] { 
    text-size: 12; 
    text-wrap-width: 60;}
  [zoom>=19] { 
      text-size: 13; 
    }
  }
}