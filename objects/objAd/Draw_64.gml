if stop{
	draw_set_alpha(1-audio_sound_get_gain(global.bgm));
	draw_rectangle_color(-640, -480, 640*2, 480*2, c_black, c_black, c_black, c_black, false);
	draw_sprite_ext(objPlayer.sprite_index, objPlayer.image_index, objPlayer.x, objPlayer.y, objPlayer.image_xscale, objPlayer.image_yscale, objPlayer.image_angle, objPlayer.image_blend, objPlayer.image_alpha);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text_scribble(320, 240, "[fntChs]按下[fntDetermine] \"Z\" [fntChs]或[fntDetermine] enter\n[fntChs]来重启游戏");
}

var _curStep = " 时间线位置: " + string(round(timeline_position));
var _instNum = " 实例数量: " + string(instance_number(all));
var _playerX = " X: ";
var _playerY = " Y: ";
if instance_exists(objPlayer){
	_playerX += string(objPlayer.x);
	_playerY += string(objPlayer.y);
}else{
	_playerX += string(NaN);
	_playerY += string(NaN);
}
var _curFps = " 帧数: " + string(fps) + "/" + string(room_speed);

draw_set_font(fntDebug);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(30, 82, _curStep + _instNum + _playerX + _playerY + _curFps, c_red, c_red, c_red, c_red, 1);
