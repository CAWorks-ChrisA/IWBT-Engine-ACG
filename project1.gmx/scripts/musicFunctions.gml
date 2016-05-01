//musicFunctions script
//Called by world.room_start
//Sets up the BGM for the current room

var nbgm;

switch (room) {

//you add rooms here; rooms that have the same song can be grouped like this
case rTitle:
    nbgm = bgm02;
    break;
case rMenu:
    nbgm = bgm02;
    break;
case rMenu2:
    nbgm = bgm02;
    break;
case rMenu3:
    nbgm = bgm02;
    break;
case rOption:
    nbgm = bgm02;
    break;
case rOption2:
    nbgm = bgm02;
    break;
case rStage01:
    nbgm = bgmStage01;
    break; //Always put a break statement at the end of the group!

//here's an example of a separate group:
case rStage02:
    nbgm = bgm01;
    break;
case rStage03:
    nbgm = bgmStage01;
    break;
    
default:
    //The default action will be to continue the song from the last room
    //Here's a line of code you can use to remind yourself if you forget to set a BGM for a room:
    //show_message("You forgot to put a BGM for this room!");
    exit;
}

//Leave this part alone - this stops the old BGM and starts the new one
if global.isMusicOn = true {
    if (global._bgm != nbgm) {
        audio_stop_sound(global._bgm);
        global._bgm = nbgm;
        audio_play_sound(global._bgm,0,1);
    }
} else {
    if global._bgm != 0 {
        audio_stop_sound(global._bgm);
        global._bgm = 0;
    }
}
