function H-intScaling4e
%function g = intScaling4e(f,mode,type).
%   G = INTSCALING4E(F) If F is an uint8 image, its values are
%   scaled so that they are in the floating point range [0,1],
%   without affecting the relative magnitude of the values. That is,
%   if F is uint8 and its values are in the range [0,255], then g =
%   f/255. For example, if F has intensities in the range [64,200],
%   G will have values in the range [0.2510, 0.7843] using this
%   option. If the maximum value of F exceeds 255, the values of the
%   output image will be g = f/max(f(:)). If F is floating point
%   with values outside the range [0,1], then MODE = 'full' and TYPE
%   = 'floating' are forced. If the values of F are floating-point
%   numbers in the range [0,1], F is passed without change unless
%   MODE = 'full' (see below). F can be a grayscale or multichannel
%   image of class uint8 or double.
%
%   G = INTSCALING4E(F,MODE,TYPE) scales the intensities of input
%   image F. If MODE = 'default' (or MODE is not included in the
%   function call), the option discussed above is implemented. If
%   MODE = 'full', then scaling is done using Eqs. (2-31) and (2-32)
%   of DIP4E. TYPE is a character string with the value 'integer' or
%   'floating' to indicate that the values of intensities in the
%   scaled image should be uint8 integers in the range [0,255] or
%   floating point numbers in the range [0,1]. 'floating' is the
%   default if TYPE is not included in the argument. (Note: In order
%   to specify parameter TYPE, MODE must be included in the function
%   call.) F can be a grayscale or multichannel image of class uint8
%   or double.
%
%   NOTE 1: This function is a slight generalization of the project
%   statement to include images with more than one channel.
%
%   NOTE 2: The 'full' mode is intended for grayscale images only.
%   If 'full' is specified, and the image is multichannel, each
%   channel will be scaled independently to the full [0,1] range.
%   This may alter the relative values between channels and produce
%   unexpected results.


