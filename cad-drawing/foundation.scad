
module foundation (
    rotation,kayakHeight,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    groundScrewHeight,
    roofPlankWidth,
    x,y,z){
    
    
// ---------- Calculated varables ----------

backPillarHeight = kayakHeight*2
        +groundScrewHeight
        +plankWidth*2; 

        
// ---------- Code ---------- 


union(){    
translate([
    x,
    y,
    z]) 
union(){
// ---------- pillar ---------- 
color("Wheat")
difference () {
union(){
    
// piller 1
translate([
    0,
    totalWidth-plankWidth,
    0]) 
cube(size = [
    plankThickness,
    plankWidth,
    backPillarHeight
    +roofPlankWidth*cos(rotation)]);
    
// piller 2
translate([
    totalLength/3*2-plankThickness,
    totalWidth-plankWidth,
    0]) 
cube(size = [
    plankThickness,
    plankWidth,
    backPillarHeight
    +roofPlankWidth*cos(rotation)]);
    
// Piller stretcher bottom
translate([
    0,
    totalWidth-plankWidth/2
    -plankThickness/2,
    backPillarHeight/4
    ]) 
cube(size = [
    totalLength/3*2-plankThickness,
    plankThickness,
    plankWidth]);

// Piller stretcher top
translate([
    0,
    totalWidth-plankWidth/2
    -plankThickness/2,
    backPillarHeight/4*3
    ]) 
cube(size = [
    totalLength/3*2-plankThickness,
    plankThickness,
    plankWidth]);
}

union () {
// Piller removal left
translate([
    -1,
    totalWidth-plankWidth,
    groundScrewHeight
    +plankWidth*2
    +kayakHeight*2
    +roofPlankWidth*cos(rotation)]) 
rotate([-rotation,0,0])
cube(size = [
    plankThickness+2,
    plankWidth+9,
    kayakHeight]);

// Piller removal right    
translate([
    totalLength/3*2
    -plankThickness-1,
    totalWidth-plankWidth+7,
    groundScrewHeight
    +plankWidth*2
    +kayakHeight*2
    +roofPlankWidth*cos(rotation)]) 
rotate([-rotation,0,0])
cube(size = [
    plankThickness+2,
    plankWidth+9,
    kayakHeight]);
}}

// ---------- shelf ---------- 
color("Tan")
union () {
// piller 1 shelf 1
translate([
    -plankThickness,
    0,
    groundScrewHeight]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);

// piller 1 shelf 2
translate([
    -plankThickness,
    0,
    groundScrewHeight
    +plankWidth
    +kayakHeight]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);
    
// piller 2 shelf 1
translate([
    totalLength/3*2,
    0,
    groundScrewHeight]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);
    
// piller 2 shelf 2
translate([
    totalLength/3*2,
    0,
    groundScrewHeight
    +plankWidth
    +kayakHeight]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);

// stretcher top
translate([
    0,
    0,
    groundScrewHeight
    ]) 
cube(size = [
    totalLength/3*2+plankThickness,
    plankThickness,
    plankWidth]);
    
// stretcher bottom
translate([
    0,
    0,
    groundScrewHeight
    +plankWidth
    +kayakHeight]) 
cube(size = [
    totalLength/3*2+plankThickness,
    plankThickness,
    plankWidth]);

}   


// --------- pillar filler--------- 
color("Wheat")
union () {
// Filler left bottom
translate([
    -plankThickness,
    totalWidth-plankWidth,
    groundScrewHeight+plankWidth]) 
cube(size = [
    plankThickness,
    plankWidth,
    kayakHeight]);

color("Wheat")
difference () {
// Filler left top
translate([
    -plankThickness,
    totalWidth-plankWidth,
    groundScrewHeight
    +plankWidth*2
    +kayakHeight
    ]) 
cube(size = [
    plankThickness,
    plankWidth,
    kayakHeight
    ]);

// remove angle
translate([
    -plankThickness-1,
    totalWidth-plankWidth,
    groundScrewHeight
    +plankWidth*2
    +kayakHeight*2
    ]) 
rotate([-rotation,0,0])
cube(size = [
    plankThickness+1,
    plankWidth+9,
    kayakHeight]);
}    


// Filler right bottom
color("Wheat")
union () {
// piller 1 shelf 1
translate([
    totalLength/3*2,
    totalWidth-plankWidth,
    groundScrewHeight+plankWidth]) 
cube(size = [
    plankThickness,
    plankWidth,
    kayakHeight]);
    
color("Wheat")
difference () {
// Filler right top
translate([
    totalLength/3*2,
    totalWidth-plankWidth,
    groundScrewHeight
    +plankWidth*2
    +kayakHeight
    ]) 
cube(size = [
    plankThickness,
    plankWidth,
    kayakHeight]);

// remove angle
translate([
    totalLength/3*2,
    totalWidth-plankWidth,
    groundScrewHeight
    +plankWidth*2
    +kayakHeight*2
    ]) 
rotate([-rotation,0,0])
cube(size = [
    plankThickness+1,
    plankWidth+9,
    kayakHeight]);
}}}}}}







// example
rotation = 20;

plankWidth     = 140;  // pine
plankThickness = 45;  // pine

totalWidth  = 1000;  // kayak width 
totalLength = 2000;  // kayak lenght

roofWidthIn  = 1000;  // calculated hypnotherapy, inner

pilleaLowestHeight = 1500; //

groundScrewHeight = 100;

    
foundation(
    rotation,360,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    groundScrewHeight,
    70,
    totalLength/3,0,0);