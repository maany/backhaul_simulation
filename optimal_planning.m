## Copyright (C) 2016 Mayank Sharma
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} optimal_planning (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Mayank Sharma <devmaany@devmaany-Lenovo-Y50-70>
## Created: 2016-12-14

function cost = optimal_planning (X, Y, PiO, PiH)
% This function returns optimal cost of backhaul network
  val = 0.5*(X.*PiO + Y.*PiH)
  val(val==0) = inf;
  cost= min(min(val));
endfunction
