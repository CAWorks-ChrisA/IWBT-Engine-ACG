//If you add any values to the save file here, remember to add them in the same spot on the menuFileSelect
//object's create event and in the saveGame script!

var f,r,xx,yy,xs;

f = FS_file_bin_open(EXECUTABLE_DIRECTORY + 'save' + string(global.savenum),0);
global.death = FS_file_bin_read_dword(f);
global.time = FS_file_bin_read_dword(f);
global.difficulty = FS_file_bin_read_byte(f);

//If you added any menu display values, put those here (see the saveGame script)

r = FS_file_bin_read_dword(f);
xx = FS_file_bin_read_dword(f);
yy = FS_file_bin_read_dword(f);
xs = FS_file_bin_read_byte(f)-1; //see saveGame to see why -1

//If you added any values not displayed on the menu, add them here

FS_file_bin_close(f);

room_goto(r);

if (!instance_exists(player)) {
    instance_create(xx,yy,player);
} else {
    player.x=xx;
    player.y=yy;
}
player.image_xscale=xs;
