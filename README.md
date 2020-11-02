# Fractal-Dimension-using-Box-Counting-Method-with-MATLAB
We measure fractal dimension of an object in an image using box counting method  and find Dimension of the image.
It is also a measure of the space-filling capacity of a pattern that tells how a fractal scales differently from the space it is embedded in.
It can be a fractional value.
It separates important classes of images and characterizes information which is not characterized by other texture analysis methods. The FD has been used in several image processing and pattern recognition application
To calculate this dimension, a fractal is placed on a grid that is evenly spaced, and number of boxes required to cover the set are calculated. The box-counting dimension is calculated by seeing how the number changes as we make the grid finer by applying a box-counting algorithm. The slope of best fit line of the log vs log graph with Nr and r as variables gives the Fractal Dimension of the image.
The FD calculation using Box-Count, or The Box-Counting Dimension is:

D = log (Nr)/log(r)

where:

D = Fractal Dimension 

Nr = Number of Boxes of side length r

r = Scale of the Box

For many objects, a fractal box-counting dimension can be estimated from the slope of the log(N) vs. log(1 ∕ s) relationship,which is most commonly done by least-squares regression. 
Thus “Simple Linear Regression” especially “Least Square Method”, is an useful and popular technique to find the box-counting dimension via the slope of the regression line.

