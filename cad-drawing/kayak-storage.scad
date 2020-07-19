// t

use <foundation.scad>;
use <roof.scad>;


rotation = 10;
plankWidth     = 140;  
// pine

plankThickness = 45;  
// pine

totalWidth  = 1000;  
// kayak width 
totalLength = 5000;  
// kayak lenght

roofHangover = 100;  
// etch side, only to studes
roofWidthIn  = 1000;  
// calculated hypnotherapy, inner

studsAmount  = 2;  
// kayak lenght, oposid diraction

pilleaLowestHeight = 1200;
groundScrewHeight = 100;

roofHeight = pilleaLowestHeight;
kayakHeight= 360;
positionRoof=kayakHeight*2
    +groundScrewHeight
    +plankWidth*2
    +100;
roofPlankWidth=70;

foundation(
    rotation,kayakHeight,
    plankWidth,plankThickness,
    totalWidth-roofHangover*2,
    totalLength,
    groundScrewHeight,
    roofPlankWidth,
    totalLength/3/2,0,0);   
    
roof (
    rotation,
    roofPlankWidth,27,
    totalWidth,totalLength,
    roofHangover,20,
    0,100,positionRoof);

