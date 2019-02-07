function H-snakeIterate4e
%function [xs,ys] = snakeIterate4e(alpha,beta,gamma,x,y,NI,Fx,Fy)
%   [XS,YS] = SNAKEITERATE4E(ALPHA,BETA,GAMMA,X,Y,NI,Fx,Fy)
%   computes the [XS,YS] coordinates of a segmentation snake using
%   the iterative solution in Eq.(11-46). Vectors X and Y are the
%   initial coordinates of the snake (provided in sequential order).
%   ALPHA, BETA, and GAMMA are as defined in Eq. (11-46) of DIP4E.
%   NI is the maximum allowed number of iterations, and Fx, Fy are
%   the force components used in Eq. (11-46). These are obtained
%   usually using function snakeForce4e.
