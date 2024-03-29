function [ TV, TV_grad ] = forward_TV_2D( I )
%FORWARD_TV_2D Total variation of a 2D image
%   Returns the sum of finite differences in 2D, and the residuals
%
%   I is a 2D real image
%     
%   TV is the total variation of I
%   TV_grad is the derivative


% Author: Darryl McClymont <darryl.mcclymont@gmail.com>
% Copyright � 2014 University of Oxford
% Version: 0.1.1
% $Rev$
% $Date$
% 
% University of Oxford means the Chancellor, Masters and Scholars of
% the University of Oxford, having an administrative office at
% Wellington Square, Oxford OX1 2JD, UK. 
%
% This file is part of Gerardus.
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details. The offer of this
% program under the terms of the License is subject to the License
% being interpreted in accordance with English Law and subject to any
% action against the University of Oxford being under the jurisdiction
% of the English Courts.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

% check arguments
narginchk(1,1);
nargoutchk(0, 2);

Dx = I([2:end,end],:) - I;
Dy = I(:,[2:end,end]) - I;


TV = sum(abs(Dx(:)) + abs(Dy(:)));


TV_grad = cat(3,Dx,Dy);



end

