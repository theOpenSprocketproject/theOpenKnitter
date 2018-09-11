/*
theOpenKnitter v0.01.091018.10

    Sebastian Figueroa C.

Github:
    @theOpenSprocketproject
Twitter:
    @sebanfica
*/

//-- Total work facet number
$fn=100;

//-- Needle --------------------------------------------------//
color("black"){
nh=100;//needle total height
wn=2; //width needle
lenn=8;//length needle
hc=3;//h cylinder perforated
dc=3;//d cylinder perforated

translate([0,0,7])

union(){
rotate([0,0,180]){
translate([5.5,-5,(-nh/2)])
difference(){

difference(){ //Primitive-Hook
difference(){
cube([lenn,wn,nh], center=true); //needle primitive

translate([lenn-2,0,(nh/2)+1]) //needle crown
rotate([0,35,0])
cube([lenn*2,wn*2,lenn*2], center=true); 
}
translate([0,0,-5]){ //--needle hook
hull(){
translate([0,0,(nh/2)-(hc*2)])
rotate([90,0,0])
cylinder(r=dc/2, h=hc, center=true);
translate([-9,0,(nh/3)-(hc*7)])
rotate([90,0,0])
cylinder(r=dc/2, h=hc, center=true);
}
}
} //Diff Prim-Hook
rotate([0,-10,0]) //hook point
translate([1.5,0,(nh/2.5)])
cube([5,5,20], center=true);
}
}
hull(){
rotate([0,-35,0]) //crown extension
translate([6-10,5,10.7-12.3])
cube([5,wn,wn], center=true);

rotate([0,-65,0]) //crown extension fillet
translate([-5.5,5,-0.5])
cube([6,1,2], center=true);

rotate([90,0,0])
translate([-0.3,-2.2,-5])
cylinder(r=wn/2, h=wn, center=true);
}
} //Union
}
//-- Needle END ----------------------------------------------//

//-- Thread Slipper ------------------------------------------//
union(){
difference(){
rotate([90,0,0]){
minkowski(){
sphere(r=2/2);
cylinder(r=20/2, h=2,center=true);
}
}
translate([0,-6,-6])
cube(20);
translate([-12,-6,-22])
cube(22);
}
translate([-3.5,0,-1.5])
cube([7,4,3], center=true);
}
//-- Thread Slipper END ---------------------------------------//

//-- Chain stitch holder
difference(){
translate([-3,3+0.5,0])
cube([2,1,6], center=true);
translate([-2,3.5,3])

difference(){ //Sacado de Chain stitch holder
rotate([90,0,0])
cylinder(r=4/2,h=1.5, center=true);

union(){
hull(){
translate([-1,0,-1])
rotate([90,0,0])
cylinder(r=2/2,h=2, center=true);

translate([-3,0,-1])
rotate([90,0,0])
cylinder(r=2/2,h=2, center=true);

translate([-1,0,-3])
rotate([90,0,0])
cylinder(r=2/2,h=2, center=true);
}
}//difference
}
}

difference(){
translate([-3,6.5,0])
cube([2,1,6], center=true);

translate([-2,6.5,3])
difference(){ //Sacado de Chain stitch holder
rotate([90,0,0])
cylinder(r=4/2,h=1.5, center=true);

union(){
hull(){
translate([-1,0,-1])
rotate([90,0,0])
cylinder(r=2/2,h=2, center=true);

translate([-3,0,-1])
rotate([90,0,0])
cylinder(r=2/2,h=2, center=true);

translate([-1,0,-3])
rotate([90,0,0])
cylinder(r=2/2,h=2, center=true);
}
}//difference
}
}
