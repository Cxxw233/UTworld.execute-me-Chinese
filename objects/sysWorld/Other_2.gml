keyboard_set_map(ord("Z"), vk_enter);
keyboard_set_map(ord("X"), vk_shift);
instance_create_depth(0, 0, 0, objHint);
window_set_caption(game_display_name);

var sbfdy = parameter_string(0);
if sbfdy == program_directory + "sbfdy.exe" || sbfdy == program_directory + "fdysb.exe"{
	show_message("警告！警告！\nfdysb!, 重复一遍, fdysb!\n\n(调试模式现已开启！)");
	global.debug = true;
}else{
	global.debug = false;
}