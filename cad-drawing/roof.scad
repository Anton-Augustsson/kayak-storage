/*

    Nightstand
    
    By Anton Augustsson
    
    
*/



module roof (
    rotation,roofHeight,
    studsAmount,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofHangover,roofWidthIn){



// ---------- Calculated varables ----------
roofWidthOut = roofHangover*2+roofWidthIn; // calculated    
studsSpacing = (roofWidthIn-(studsAmount*plankThickness)) /(studsAmount-1)-0.001;  // calculated 
//studsAmount*plankThickness+i(studsAmount-1)=totalLength
    


// ---------- Code ---------- 

translate([0,0,roofHeight])
rotate([-rotation,0,0])     
union(){
    
// ---------- Stud ---------- 
color("Wheat")
union(){
for(i = [0:studsSpacing:roofWidthIn])
translate([
    0,
    i,
    0]) 
cube(size = [
    totalLength,
    plankThickness,
    plankWidth]);

}


// ---------- Roof ----------
color("Tan")
union(){
for(i = [-plankWidth:plankWidth+0.6:totalLength])
translate([
    i,
    -roofHangover,
    plankWidth]) 
cube(size = [
    plankWidth,
    roofWidthOut,
    plankThickness]);

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


roof (rotation,roofHeight,
    studsAmount,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofHangover,roofWidthIn);
