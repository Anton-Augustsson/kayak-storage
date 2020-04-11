
module foundation (
    rotation,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofWidthIn,groundScrewHeight,
    pilleaLowestHeight,backPillarHeight,frontPillarHeight){
    
    
// ---------- Calculated varables ----------
backPillarHeight  = pilleaLowestHeight
    +tan(rotation)*plankWidth; // calculated
frontPillarHeight = pilleaLowestHeight
    +tan(rotation)*(roofWidthIn); // calculated     


// ---------- Code ---------- 

difference() {        
union(){    
// ---------- pillar ---------- 
color("Wheat")
union(){

// piller 1
translate([
    0,
    0,
    0]) 
cube(size = [
    plankThickness,
    plankWidth,
    frontPillarHeight]);
    
// piller 2
translate([
    totalLength-plankThickness,
    0,
    0]) 
cube(size = [
    plankThickness,
    plankWidth,
    frontPillarHeight]);
    
// piller 3
translate([
    0,
    totalWidth-plankWidth,
    0]) 
cube(size = [
    plankThickness,
    plankWidth,
    backPillarHeight]);
    
// piller 4
translate([
    totalLength-plankThickness,
    totalWidth-plankWidth,
    0]) 
cube(size = [
    plankThickness,
    plankWidth,
    backPillarHeight]);

}

union(){
// right lower stude
translate([
    totalLength-plankThickness*2,
    0,
    groundScrewHeight]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);

// right upper stude
translate([
    totalLength-plankThickness*2,
    0,
    pilleaLowestHeight-plankWidth]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);
    
// left lower stude
translate([
    plankThickness,
    0,
    groundScrewHeight]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);

// left upper stude
translate([
    plankThickness,
    0,
    pilleaLowestHeight-plankWidth]) 
cube(size = [
    plankThickness,
    totalWidth,
    plankWidth]);
}

union(){
// front stude
translate([
    0,
    plankWidth,
    groundScrewHeight+plankWidth]) 
cube(size = [
    totalLength,
    plankThickness,
    plankWidth]);

// back stude
translate([
    0,
    totalWidth-plankWidth-plankThickness,
    groundScrewHeight+plankWidth]) 
cube(size = [
    totalLength,
    plankThickness,
    plankWidth]);

}

union(){
// left kayak stude
translate([
    200,
    0,
    groundScrewHeight+plankWidth*2]) 
cube(size = [
    plankWidth,
    totalWidth,
    plankThickness]);

// right kayak stude
translate([
    totalLength-200-plankWidth,
    0,
    groundScrewHeight+plankWidth*2]) 
cube(size = [
    plankWidth,
    totalWidth,
    plankThickness]);
}

}

// moveDown = cos(rotation)*plankThickness
// 

rotate([-rotation,0,0])
union(){
translate([
    0,
    -291,
    frontPillarHeight-cos(rotation)*plankThickness+19]) 
cube(size = [
    plankWidth,
    totalWidth+100,
    plankThickness]);    

translate([
    totalLength-plankThickness,
    -291,
    frontPillarHeight-cos(rotation)*plankThickness+19]) 
cube(size = [
    plankWidth,
    totalWidth+100,
    plankThickness]);    

}

}}







// example
rotation = 10;

plankWidth     = 140;  // pine
plankThickness = 45;  // pine

totalWidth  = 1000;  // kayak width 
totalLength = 2000;  // kayak lenght

roofWidthIn  = 1000;  // calculated hypnotherapy, inner

pilleaLowestHeight = 1500; //

groundScrewHeight = 100;




foundation (
    rotation,
    plankWidth,plankThickness,
    totalWidth,totalLength,
    roofWidthIn,groundScrewHeight,
    pilleaLowestHeight);    
    