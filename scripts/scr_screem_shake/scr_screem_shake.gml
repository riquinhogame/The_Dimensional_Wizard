
global.treme = 0

function screensahakke(_forca)
{
    
    if(instance_exists(obj_screen_shake))
    {
        with (obj_screen_shake) {
        	if(_forca > global.treme)
            {
                
                global.treme = _forca
                
            }
        }
    }
    
}