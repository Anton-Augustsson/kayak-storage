/*

    Nightstand
    
    By Anton Augustsson
    
    
*/

use <roof-frame.scad>;

module roof (
    rotation,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofHangover,roofThickness,
    x,y,z){



// ---------- Calculated varables ----------

    


// ---------- Code ---------- 

translate([x,y,z])
rotate([-rotation,0,0])     
union(){
    
// ---------- Stud ---------- 
color("Wheat")
union(){
roofFrame (
    70,27,
    totalWidth,totalLength,
    roofHangover,20,
    roofHangover,0,0,0);
roofFrame (
    70,27,
    totalWidth,totalLength,
    roofHangover,20,
    roofHangover
    +(totalLength-roofHangover*2),
    totalWidth-roofHangover*2,
    0,180);
}


// ---------- Roof ----------
color("Tan")
union(){
translate([
    0,
    -roofHangover,
    plankWidth]) 
cube(size = [
    totalLength,
    totalWidth,
    roofThickness]);

}}}



/*
    ---------- Exampel ---------- 
*/


rotation = 10;
plankWidth     = 140;  // pine

plankThickness = 45;  // pine

totalWidth  = 1000;  // kayak width 
totalLength = 2000;  // kayak lenght

roofHangover = 100;  // etch side, only to studes
roofWidthIn  = 1000;  // calculated hypnotherapy, inner

studsAmount  = 2;  // kayak lenght, oposid diraction

roofHeight = 1;


roof (
    rotation,
    70,27,
    totalWidth,totalLength,
    roofHangover,20,
    0,0,0);
