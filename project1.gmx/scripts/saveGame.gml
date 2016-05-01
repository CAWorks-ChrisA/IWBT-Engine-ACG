//If you add any values to the save file here, remember to add them in the same spot on the menuFileSelect
//object's create event and in the loadGame script!

var f,n,dyingSave;

dyingSave = argument0

n=EXECUTABLE_DIRECTORY + 'save' + string(global.savenum);
if (FS_file_exists(n)) f=FS_file_bin_open(n,2);
else f=FS_file_bin_open(n,1);

//Save menu display (death, time, etc) values first (see menuFileSelect create event)
FS_file_bin_write_dword(f,global.death);
FS_file_bin_write_dword(f,global.time);
if (dyingSave) { FS_file_bin_close(f); exit; } //if we're just doing a dying save, close the file and exit here
FS_file_bin_write_byte(f,global.difficulty);

//Add any values you want displayed on the menu here

//Continue with saving the rest of the values
FS_file_bin_write_dword(f,room);
FS_file_bin_write_dword(f,round(x));
FS_file_bin_write_dword(f,round(y));
FS_file_bin_write_byte(f,player.image_xscale+1); //+1 so -1=0, 1=2; bytes have no sign

//Add any values that will not be displayed on the menu here

FS_file_bin_close(f);
