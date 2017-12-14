///@description map_grid_can_generate
///@arg x
///@arg y
var i = argument0,
	j = argument1;
	
if (i > 0 && map_array[i-1,j]) return true;
if (i < MAP_SIZE-1 && map_array[i+1,j]) return true;
if (j > 0 && map_array[i,j-1]) return true;
if (j < MAP_SIZE-1 && map_array[i, j+1]) return true;

return false;