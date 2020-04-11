// t

use <foundation.scad>;
use <roof.scad>;


rotation = 10;
plankWidth     = 140;  // pine

plankThickness = 45;  // pine

totalWidth  = 1000;  // kayak width 
totalLength = 5000;  // kayak lenght

roofHangover = 100;  // etch side, only to studes
roofWidthIn  = 1000;  // calculated hypnotherapy, inner

studsAmount  = 2;  // kayak lenght, oposid diraction

pilleaLowestHeight = 1200; //
groundScrewHeight = 100;

roofHeight = pilleaLowestHeight;




foundation (
    rotation,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofWidthIn,groundScrewHeight,
    pilleaLowestHeight);    
    


roof (rotation,roofHeight,
    studsAmount,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofHangover,roofWidthIn);

