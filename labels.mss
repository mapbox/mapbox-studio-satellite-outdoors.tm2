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
@place_text:        #fff;

@country_halo: fadeout(@place_halo,95);
@state_halo: fadeout(@place_halo,90);
@city_halo_lo: fadeout(@place_halo,90);
@city_halo_hi: fadeout(@place_halo,70);
@town_halo: fadeout(@place_halo,70);
@village_halo: fadeout(@place_halo,70);
@neigh_halo: fadeout(@place_halo,70); // also for suburbs
@water_halo: fadeout(@place_halo,90);
@poi_halo: fadeout(@place_halo,82);
@rail_halo: fadeout(@place_halo,85);
@airport_halo: fadeout(@place_halo,85);

@road_halo:         fadeout(#333,85);
@road_text:         #fff;

@marine_text: #fff;

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
    [zoom>=12] { line-width: 3; }
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
  text-halo-fill: fadeout(@place_halo,97);
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-min-distance: 1;
  text-size: 10;
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

