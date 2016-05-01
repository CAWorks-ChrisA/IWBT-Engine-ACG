Thanks for downloading "I Wanna Be the Engine - KS Edition"! This engine is a collaboration engine between Sephalos and Klazen108, designed for Game Maker Studio. Our goal is to make a clean, simple engine, as close to starting from scratch as possible while still taking care of the grunt work for you.

If you want to read more about this engine, or have questions, come browse our post on the Wannabes' forums at http://www.iwannacommunity.com/forum/index.php?topic=1625.0

This readme will be more complete later, but here's some big things you should know if you're new to studio:

--1) When creating your final game, MAKE SURE TO CHOOSE 'Compressed Applications zip (*.zip)' from the 'Save as Type' drop-down box at the bottom of the 'Create target executable' window! The way that we had to handle save files supports only this export type. We know that this includes a bunch of files outside the exe, but there's nothing we can do about it :( This is the only way to have save files in the directory with the game for games made in GMS.

--2) If you want save files while testing from inside Studio, go to the 'Macros' section of the treeview on the left side of Studio, and choose 'All Configurations'. Then, change the Value of EXECUTABLE_DIRECTORY to a path on your computer for your save files. For example, change it to "C:\" (quotes included! this is important!) and your save files will be saved to C:\. Don't forget to change this back to working_directory before you release your game, you don't want other people's save files to end up in their root directory!

--3) The Debug object provides you with a bunch of helpful information about your game, and the ability to warp on right mouse click. Include it in your first room if you want to use it, but don't forget to remove it before you release your game, or everyone will have your dev tools!

I have included the public domain "Mona" font with the engine and have used it for all the text - this should provide the full set of characters for English and Japanese text to appear correctly. If you have issues with text not appearing, try installing the Mona.ttf file included with the project.

This engine was created using GMStudio Professional Edition v1.4.1567