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
// 2__ PLACE NAMES
// =====================================================================

// 2_1__ Countries _____________________________________________________

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
