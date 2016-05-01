//Script used to initialize things for the game
//Called in world.GameStart and world.F2 events

with (world) {
    initSetGlobals(); //Set some basic game parameters like first room, name, etc
    loadGlobals(); //Load global configuration like keybinds
    
    window_set_caption(global.roomCaptionDef)
    window_set_fullscreen(global.isFullscreen);
    
    for(i=0;i<256;i+=1) global.trigger[i] = 0 //array for triggers 
    
    global.death = 0 //deathcount in file
    global.time = 0 //current time in file
    global.difficulty = 0 //game difficulty setting
    
    global._bgm = 0; //Current BGM
    lastRoom=room; //Last room we were in, used to check BGM
}

with (player) instance_destroy(); //Remove player if one exists
