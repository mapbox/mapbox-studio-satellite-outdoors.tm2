@name: [name_en];

/* ================================================================== */
/* FONTS
/* ================================================================== */

@sans_lt:           "Open Sans Regular","Arial Unicode MS Regular";
@sans_lt_italic:    "Open Sans Italic","Arial Unicode MS Regular";
@sans:              "Open Sans Semibold","Arial Unicode MS Bold";
@sans_bold:         "Open Sans Bold","Arial Unicode MS Bold";
@sans_italic:       "Open Sans Semibold Italic","Arial Unicode MS Regular";
@sans_bold_italic:  "Open Sans Bold Italic","Arial Unicode MS Bold";


/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

@place_halo:        #222;
@place_comp_halo:   #555;
@place_text:        #fff;

@country_halo: fadeout(@place_halo,95);
@state_halo: fadeout(@place_comp_halo,95);
@city_halo: fadeout(#555,97);
@town_halo: fadeout(@place_halo,90);
@village_halo: fadeout(@place_halo,90);
@neigh_halo: fadeout(@place_halo,80); // also for suburbs
@water_halo: fadeout(@place_halo,90);
@poi_halo: fadeout(@place_halo,90);
@rail_halo: fadeout(@place_halo,85);
@airport_halo: fadeout(@place_halo,85);

//@poi_fill: #eaff62;
@poi_fill: #c4ffdb;

@road_fill:     #fff;
@road_halo:         fadeout(#333,80);
@road_text:         #fff;

@marine_text: #445;



// =====================================================================
// ADMIN BOUNDARIES
// =====================================================================

#admin[zoom>=2] {
  ::lev2[admin_level=2] {
    opacity: 0.8;
    line-join: round;
    line-color: #fff;
    [maritime=1] {
      line-color: #026;
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
  ::lev2off[admin_level=2] {
    opacity: 0.5;
    line-join: round;
    line-color: @place_halo;
    line-offset:1;
    [maritime=1] {
      line-color: #026;
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
  ::lev34[admin_level>=3] {
    line-color: #fff;
    line-width: 1;
    line-dasharray: 10,3,3,3;
    line-opacity: 0.25;
    [zoom>=6] { 
      line-width: 1.5; 
      }
    [zoom>=8] { line-width: 2; }
    [zoom>=11] { line-opacity: 0.5; }
    [zoom>=12] { line-width: 3; }
  }
}

// =====================================================================
// MARINE LABELS
// =====================================================================

#marine_label {
  text-name: @name;
  text-face-name: @sans_lt_italic;
  text-fill: @marine_text;
  text-wrap-width: 80;
  text-wrap-before: true;
  [placement = 'point'] {
    text-placement: point;
  }
  [placement = 'line'] {
    text-placement: line;
    text-avoid-edges: true;
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

#country_label_line {
  line-color: #fff;
  line-opacity: 0.6;
  line-width: 0.8;
  line-dasharray: 5,2;
}

// these styles assume usage of custom admin_label tables.
#country_label[zoom<=10] {
  text-name: @name;
  text-face-name: @sans_bold;
  text-placement: point;
  [zoom=2] { text-opacity:.75; }
  text-size: 10;
  text-fill: @place_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-wrap-width: 30;
  text-min-distance: 2;
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
  text-name: @name;
  text-face-name: @sans_lt;
  text-placement: point;
  text-fill: @place_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-halo-comp-op: overlay;
  text-min-distance: 1;
  text-size: 10;
  text-opacity: 0.8;
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
#place_label::citydots[type='city'][zoom>=4][zoom<=7][localrank<=2] {
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
    text-halo-radius: 3;
    text-halo-rasterizer: fast;
    text-halo-comp-op: overlay;
    text-min-distance: 2;
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
#place_label[type='city'][zoom>=8][zoom<=15][localrank<=2] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @place_text;
  text-halo-fill: @city_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-wrap-width: 40;
  text-min-distance: 5;
  text-line-spacing: -4;
  //text-avoid-edges:	true;
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

#place_label[type='town'][zoom>=8][zoom<=17][localrank<=2] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @place_text;
  text-halo-fill: @town_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-line-spacing: -4;
  text-min-distance: 15;
  text-avoid-edges:	true;
  [zoom>=13] { text-min-distance: 4; }
  text-size: 12;
  [zoom>=11] { text-size: 14; text-min-distance: 18; }
  [zoom>=12] { text-size: 15; text-wrap-width: 80; }
  [zoom>=13] { text-size: 16; text-wrap-width: 120; }
  [zoom>=14] { text-size: 18; text-wrap-width: 160; text-halo-radius: 3; }
  [zoom>=15] { text-size: 20; text-wrap-width: 200; }
  [zoom>=16] { text-size: 22; text-wrap-width: 240; }
}

// Villages ______________________________________________________

#place_label[type='village'][zoom>=10][zoom<=17][localrank<=2] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @place_text;
  text-size: 11;
  text-halo-fill: @village_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-min-distance: 40;
  text-line-spacing: -4;
  [zoom>=12] { text-size: 12; }
  [zoom>=13] { text-wrap-width: 80; }
  [zoom>=14] { text-size: 14; text-wrap-width: 100; }
  [zoom>=15] { text-size: 16; text-wrap-width: 120; }
  [zoom>=16] { text-size: 18; text-wrap-width: 160; }
  [zoom=17] { text-size: 20; text-wrap-width: 200; }
}

// Hamlets ______________________________________

#place_label[zoom>=13][zoom<=18][localrank<=2] {
  [type='hamlet'] {
    text-name: @name;
    text-face-name: @sans;
    text-placement: point;
    text-fill: @place_text;
    text-size: 11;
    text-halo-fill: @village_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-min-distance: 4;
    text-line-spacing: -2;
    [zoom>=14] { text-size: 12; text-wrap-width: 80; }
    [zoom>=16] { text-size: 14; text-wrap-width: 100; }
    [zoom>=17] { text-size: 16; text-wrap-width: 130; }
    [zoom>=18] { text-size: 18; text-wrap-width: 160; }
  }
}

// Suburbs _______________________________________________________

#place_label[type='suburb'][zoom>=12][zoom<=17][localrank<=2] {
  text-name: @name;
  text-face-name: @sans;
  text-transform:	uppercase;
  text-placement: point;
  text-fill: @place_text;
  text-size: 11;
  text-character-spacing:	1.5;
  text-halo-fill: @neigh_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-wrap-width: 80;
  text-wrap-before: true;
  text-min-distance: 4;
  text-line-spacing: -2;
  [zoom=12] { text-min-distance: 30; }
  [zoom>=13] { text-size: 12; text-min-distance: 20; }
  [zoom>=14] { text-size: 13; text-wrap-width: 80; }
  [zoom>=15] { text-size: 14; text-wrap-width: 120; }
  [zoom>=16] { text-size: 16; text-wrap-width: 160; }
  [zoom>=17] { text-size: 20; text-wrap-width: 200; }
}

// Neighbourhoods ______________________________________

#place_label[zoom>=13][zoom<=18][localrank<=2] {
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
    text-wrap-width: 80;
    text-wrap-before: true;
    text-min-distance: 4;
    text-line-spacing: -2;
    [zoom>=14] { text-size: 11; text-wrap-width: 80; }
    [zoom>=15] { text-size: 13; text-wrap-width: 80; }
    [zoom>=16] { text-size: 14; text-wrap-width: 100; }
    [zoom>=17] { text-size: 16; text-wrap-width: 130; }
    [zoom>=18] { text-size: 18; text-wrap-width: 160; }
  }
}

// =====================================================================
// ROADS + ROAD LABELS
// =====================================================================
/*
#bridge { opacity: .5; comp-op: xor; }
#road { opacity:.45; }
#tunnel { opacity: 0.13; }

#bridge,
#road[zoom>8],
#tunnel {
  ['mapnik::geometry_type'=2] {
    [class='motorway'],[class='major_rail'],[class='minor_rail'] {
    line-cap: round;
    line-join: round;
    line-gamma: 1.2;
    line-color: @road_fill;
    line-width: 1;
    [class='motorway'] {
      line-width:1;
      [zoom>12] { line-width: 1.5; }
      [zoom=15] { line-width: 3; }
      [zoom=16] { line-width: 6; }
      [zoom=17] { line-width: 8; }
      [zoom>17] { line-width: 12; }
    }
    [zoom>15][class='major_rail'],[zoom>15][class='minor_rail'] {
      line-color: @road_fill;
      line-cap: butt;
      line-dasharray:2,2;
      [zoom=16] { line-width: 2; }
      [zoom=17] { line-width: 3; }
      [zoom=18] { line-width: 4; }
      [zoom>18] { line-width: 5; }
    }
   }  
  }
}
*/
// highway shields

@us-shield-name: "[ref].replace(';.*', '').replace('^[^\d]*', '')";
#road_label::us_shield[class='motorway'][zoom>=11][reflen>0][reflen<=6]{
  // Default shields
  shield-file: url("img/shield/motorway_lt_lg_[reflen].png");
  shield-name: [ref];
  shield-face-name: @sans_bold;
  shield-size: 9;
  shield-character-spacing:	0.5;
  shield-fill: #fff;
  shield-min-padding: 10;
  shield-min-distance: 70;
  shield-halo-fill: fadeout(#000,70);
  shield-halo-radius: 2;
  [zoom>=14] { shield-min-distance: 80; }
  [zoom>=15] {
      //shield-file: url("img/shield/motorway_lg_[reflen].png");
     // shield-fill: #000;
     //shield-halo-radius: 0;
    }  
  // 1 & 2 digit US state highways
  [ref =~ '^(AL|AK|AS|AZ|AR|CA|CO|CT|DE|DC|FM|FL|GA|GU|HI|ID|IL|IN|IA|KS|KY|LA|ME|MH|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|MT|OH|OK|OR|PW|PA|PR|RI|SC|SD|TN|TX|UT|VT|VI|VA|WA|WV|WI|WY|SR)\ ?\d[\dA-Z]?(;.*|$)'] {
    shield-file: url(img/shield/us_state_2_lt.png);
    shield-name: @us-shield-name;
    [zoom>=15] {
      //shield-file: url(img/shield/us_state_2.png);
    }  
  }
  // 3 digit US state highways
  [ref =~ '^(AL|AK|AS|AZ|AR|CA|CO|CT|DE|DC|FM|FL|GA|GU|HI|ID|IL|IN|IA|KS|KY|LA|ME|MH|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|MT|OH|OK|OR|PW|PA|PR|RI|SC|SD|TN|TX|UT|VT|VI|VA|WA|WV|WI|WY|SR)\ ?\d\d[\dA-Z](;.*|$)'] {
    shield-file: url(img/shield/us_state_3_lt.png);
    shield-name: @us-shield-name;
    [zoom>=15] {
      //shield-file: url(img/shield/us_state_3.png);
    }  
  }
  // 1 & 2 digit US highways
  [ref =~ '^US\ ?\d[\dA-Z]?(;.*|$)'] {
    shield-file: url(img/shield/us_highway_2_lt.png);
    shield-name: @us-shield-name;
    [zoom>=15] {
      //shield-file: url(img/shield/us_highway_2.png);
    }  
  }
  // 3 digit US highways
  [ref =~ '^US\ ?\d\d[\dA-Z](;.*|$)'] {
    shield-file: url(img/shield/us_highway_3_lt.png);
    shield-name: @us-shield-name;
    [zoom>=15] {
     // shield-file: url(img/shield/us_highway_3.png);
    }  
  }
  // 1 & 2 digit US Interstates
  [ref =~ '^I\ ?\d[\dA-Z]?(;.*|$)'] {
    shield-file: url(img/shield/us_interstate_2_lt.png);
    shield-name: @us-shield-name;
    shield-text-dy:	-1;
    [zoom>=15] {
      //shield-file: url(img/shield/us_interstate_2.png);
    }  
  }
  // 3 digit US Interstates
  [ref =~ '^I\ ?\d\d[\dA-Z](;.*|$)'] {
    shield-file: url(img/shield/us_interstate_3_lt.png);
    shield-name: @us-shield-name;
    shield-text-dy:	-1;
    [zoom>=15] {
      //shield-file: url(img/shield/us_interstate_3.png);
    }   
  }
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
  //[class='main'][zoom>=16][len>1000],
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
    // Titlecase
    // text-size: 10; 
    // text-character-spacing:	0.5; 
    text-halo-fill: @road_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-min-distance: 200; // only for labels w/ the same name
    //[zoom>=14] { text-size: 10; }
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
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 11;
    text-wrap-width: 50;
    text-wrap-before: true;
    text-halo-fill: @water_halo;
    text-line-spacing: -2;
    text-face-name: @sans_italic;
    text-fill: @place_text;
    text-opacity: 0.5;
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
  text-halo-fill: @water_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-placement: line;
  text-min-distance: 400;
  text-size: 9;
  text-character-spacing: 0.5;
  text-opacity: 0.5;
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

// All POI labels need clean-up and relationship between types

// Parks ______________________________________________________

#poi_label[maki='park'][scalerank<=3][localrank<=1] { 
  [zoom<14],
  [zoom>=14][scalerank<=1][localrank<=1],
  [zoom>=16][scalerank<=2][localrank<=1],
  [zoom>=17][scalerank<=3][localrank<=1] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-size: 10;
    text-character-spacing: 0.5;
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
    marker-line-color: rgba(0,0,0,0.75);
    marker-line-width: 2;
  }
}

// Mountain peaks ______________________________________________________

#poi_label[type='Peak'] {
  marker-file: url("img/maki/triangle-12.svg"); 
  marker-fill: @poi_fill;
  text-name: @name;
  text-face-name: @sans_bold;
  //text-transform:uppercase;
  text-size: 10;
  text-character-spacing: 0.5;
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
  //marker-fill: @poi_fill;
  marker-line-color: rgba(0,0,0,0.75);
  marker-line-width: 2;
  text-name: "''";
  text-size: 10;
  text-fill: @place_text;
  text-halo-fill: @poi_halo;
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-face-name: @sans_bold;
  text-character-spacing: 1;
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
    marker-file: url("img/airport/[maki]-24.svg");
    text-size: 14;
    text-dx: 19; text-dy: 19;
    text-wrap-width: 120;
  }
}

// Rail (not subway or light) ___________________________________________

#poi_label[type='Rail Station'][network='rail'] {
  marker-file: url("img/rail/rail-12.svg");
  //marker-fill: @poi_fill;
  marker-height: 12;
  marker-allow-overlap: false;
  marker-file: url("img/rail/rail-18.svg");
  marker-height: 18;
  [zoom>15] {
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
      text-halo-radius: 1.5;
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
  text-character-spacing: 1;
  text-line-spacing: -2;
  text-wrap-width: 50;
  text-fill: @place_text;
  text-halo-fill: @poi_halo;
  text-halo-radius: 2.5;
  text-halo-rasterizer: fast;
  text-halo-comp-op: minus;
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


