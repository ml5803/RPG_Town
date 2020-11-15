/// @description Insert description here
// You can write your code in this editor

global.tag_list = ds_list_create();

tag_1 = instance_create_layer(44, 400, "instances", obj_kids_tag);
tag_2 = instance_create_layer(316, 362, "instances", obj_kids_tag);
tag_3 = instance_create_layer(577, 474, "instances", obj_kids_tag);
tag_4 = instance_create_layer(198, 204, "instances", obj_kids_tag);
tag_5 = instance_create_layer(260, 105, "instances", obj_kids_tag);

ds_list_add(global.tag_list, tag_1);
ds_list_add(global.tag_list, tag_2);
ds_list_add(global.tag_list, tag_3);
ds_list_add(global.tag_list, tag_4);
ds_list_add(global.tag_list, tag_5);

tag_1.is_it = true;