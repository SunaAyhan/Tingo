/// @description Insert description here
// You can write your code in this editor
switch(global.tema){
	case 1:
		instance_deactivate_layer("tema2");
		instance_deactivate_layer("tema3");
		instance_deactivate_layer("tema4");
		instance_deactivate_object(Obj_OncekiTema);
		instance_activate_layer("tema1");
		break;
	case 2:
		instance_deactivate_layer("tema1");
		instance_deactivate_layer("tema3");
		instance_deactivate_layer("tema4");
		instance_activate_object(Obj_OncekiTema);
		instance_activate_layer("tema2");
		break;
	case 3:
		instance_deactivate_layer("tema2");
		instance_deactivate_layer("tema1");
		instance_deactivate_layer("tema4");
		instance_activate_object(Obj_SonrakiTema);
		instance_activate_layer("tema3");
		break;
	case 4:
		instance_deactivate_layer("tema2");
		instance_deactivate_layer("tema3");
		instance_deactivate_layer("tema1");
		instance_deactivate_object(Obj_SonrakiTema);
		instance_activate_layer("tema4");
		break;
}
