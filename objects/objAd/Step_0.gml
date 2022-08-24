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

window_set_caption(game_display_name + _curStep + _instNum + _playerX + _playerY + _curFps);
