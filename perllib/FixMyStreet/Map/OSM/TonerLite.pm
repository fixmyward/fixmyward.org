# FixMyStreet:Map::OSM::TonerLite
# OSM TonerLite maps on FixMyStreet.
#
# Map tiles by <http://stamen.com> Stamen Design,
# under <http://creativecommons.org/licenses/by/3.0>CC BY 3.0.
# Data by <http://openstreetmap.org> OpenStreetMap,
# under <http://www.openstreetmap.org/copyright> ODbL.
#
# Copyright (c) 2014 UK Citizens Online Democracy. All rights reserved.
# Email: hakim@mysociety.org; WWW: http://www.mysociety.org/

package FixMyStreet::Map::OSM::TonerLite;
use Moo;
extends 'FixMyStreet::Map::OSM';

has '+map_type' => ( default => 'OpenLayers.Layer.Stamen' );

sub map_javascript { [
    '/vendor/OpenLayers/OpenLayers.fixmystreet.js',
    "https://stamen-maps.a.ssl.fastly.net/js/tile.stamen.js?v1.3.0",
    '/js/map-OpenLayers.js',
    '/js/map-toner-lite.js',
] }

has '+copyright' => ( default => 
    'Map tiles by <a href="http://stamen.com">Stamen Design</a>, under <a href="http://creativecommons.org/licenses/by/3.0">CC BY 3.0</a>. Data by <a href="http://openstreetmap.org">OpenStreetMap</a>, under <a href="http://www.openstreetmap.org/copyright">ODbL</a>.'
);

sub map_tiles {
    my ( $self, %params ) = @_;
    my ( $x, $y, $z ) = ( $params{x_tile}, $params{y_tile}, $params{zoom_act} );
    return [
        "https://stamen-tiles-a.a.ssl.fastly.net/toner-lite/$z/" . ($x - 1) . "/" . ($y - 1) . ".png",
        "https://stamen-tiles-b.a.ssl.fastly.net/toner-lite/$z/$x/" . ($y - 1) . ".png",
        "https://stamen-tiles-c.a.ssl.fastly.net/toner-lite/$z/" . ($x - 1) . "/$y.png",
        "https://stamen-tiles-d.a.ssl.fastly.net/toner-lite/$z/$x/$y.png",
    ];
}

1;
