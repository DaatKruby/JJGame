var layer_id1 = layer_get_id("LastBackground");
var layer_id2 = layer_get_id("MiddleBackground");

layer_x(layer_id1, lerp(0,camera_get_view_x(view_camera[0]), 0.5));
layer_x(layer_id2, lerp(0,camera_get_view_x(view_camera[0]), 0.75));