/*

    Nightstand
    
    By Anton Augustsson
    
    
*/

module roofFrame (
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofHangover,roofThickness,
    x,y,z,rotation){



// ---------- Calculated varables ----------

positionMiddleStud=700;
//totalLength/3*2-plankThickness+roofHangover+100

// ---------- Code ---------- 

translate([x,y,z])
rotate([0,0,rotation])  
union(){    
// ---------- Stud ---------- 
color("Wheat")
union(){
// Stud Front
translate([
    0,
    0,
    0]) 
cube(size = [
    (totalLength-roofHangover*2)/2,
    plankThickness,
    plankWidth]);

// Stud Back
translate([
    0,
    totalWidth-plankThickness
    -roofHangover*2,
    0]) 
cube(size = [
    (totalLength-roofHangover*2)/2,
    plankThickness,
    plankWidth]);

// Stud Left
translate([
    0,
    plankThickness,
    0]) 
cube(size = [
    plankThickness,
    totalWidth-plankThickness*2
    -roofHangover*2,
    plankWidth]);    

// Stud Middle
translate([
    positionMiddleStud,
    plankThickness,
    0]) 
cube(size = [
    plankThickness,
    totalWidth-plankThickness*2
    -roofHangover*2,
    plankWidth]);  

// Stud Right
translate([
    (totalLength-roofHangover*2)/2
    -plankThickness,
    plankThickness,
    0]) 
cube(size = [
    plankThickness,
    totalWidth-plankThickness*2
    -roofHangover*2,
    plankWidth]);
}
}}



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
