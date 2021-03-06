function [ x, y, w ] = rule09 ( )

%*****************************************************************************80
%
%% RULE09 returns the rule of degree 9.
%
%  Discussion:
%
%    Order 9 (19 pts)
%    1/6 data for 9-th order quadrature with 6 nodes.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    26 June 2014
%
%  Author:
%
%    Original FORTRAN77 version by Hong Xiao, Zydrunas Gimbutas.
%    This MATLAB version by John Burkardt.
%
%  Parameters:
%
%    Output, real X(*), Y(*), the coordinates of the nodes.
%
%    Output, real W(*), the weights.
%
  x = [ ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.51923560962373232501497734583023, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000 ];
  y = [ ... ...
      -0.54160946728182000656873212814730, ...
       0.00000000000000000000000000000000, ...
       0.50274436666672432312125361006830, ...
      -0.51354426784066472011973483470318, ...
      -0.35942222147133163342323862565198, ...
       0.99975295878520206908663626641606 ];
  w = [ ... ...
       0.20619392336297146785884881219859E-01, ...
       0.21306316202539810241408079330466E-01, ...
       0.52411159696263022262999116690283E-01, ...
       0.56964341363056457388652374913231E-01, ...
       0.51213402104188971492967950562937E-01, ...
       0.16831057123070001964624080916057E-01 ];

  return
end