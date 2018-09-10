//-- Total work facet number
$fn=100;
//-- Serial hull for complex shapes
module serial_hull(){
    for (i=[0:$children-2])    
    difference(){
            children(i);
        children(i+1);
        }
}

//-- Needle
translate([-5/2,4.5,(-100/2)+8])
cube([5,1,100], true);

//-- Thread slipper
union(){
difference(){
rotate([90,0,0]){
minkowski(){
sphere(r=2/2);
cylinder(r=10/2, h=2,center=true);
}
}
translate([0,-6,-6])
cube(12);
translate([-8,-6,-12])
cube(12);
}
translate([-1,0,-1.5])
cube([2,4,3], center=true);
}

//-- Chainstitch holder
translate([-3,3+0.5,0])
cube([2,1,6], center=true);