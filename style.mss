Map {
  buffer-size:256;
  background-color: transparent;
}

/* ================================================================== */
/* LANGUAGE
/* ================================================================== */

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

@country_halo: fadeout(@place_halo,90);
@state_halo: fadeout(@place_halo,90);
@city_halo: fadeout(#333,90);
@town_halo: fadeout(@place_halo,90);
@village_halo: fadeout(@place_halo,90);
@neigh_halo: fadeout(@place_halo,80); // also for suburbs
@water_halo: fadeout(@place_halo,90);
@poi_halo: fadeout(#000,90);
@rail_halo: fadeout(@place_halo,85);
@airport_halo: fadeout(@place_halo,85);

@poi_fill: #c4ffdb;

@road_halo:         fadeout(#222,80);
@road_text:         #fff;

@marine_text: #445;