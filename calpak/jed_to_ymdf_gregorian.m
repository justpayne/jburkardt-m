function [ y, m, d, f ] = jed_to_ymdf_gregorian ( jed )

%*****************************************************************************80
%
%% JED_TO_YMDF_GREGORIAN converts a JED to a Gregorian YMDF date.
%
%  Discussion:
%
%    This Gregorian calendar is extended backwards in time before
%    its actual adoption.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    24 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Edward Richards,
%    Algorithm F,
%    Mapping Time, The Calendar and Its History,
%    Oxford, 1999, pages 324-325.
%
%  Parameters:
%
%    Input, real JED, the Julian Ephemeris Date.
%
%    Output, integer Y, M, D, real F, the YMDF date.
%

%
%  Determine the computational date (Y'/M'/D').
%
  j = floor ( jed + 0.5 );
  f = ( jed + 0.5 ) - j;

  g = floor ( ( 4 * j + 274277 ) / 146097 );
  g = floor ( ( 3 * g ) / 4 ) - 38;
  j_prime = j + 1401 + g;

  y_prime = floor ( ( 4 * j_prime + 3 ) / 1461 );
  t_prime = floor ( mod ( 4 * j_prime + 3, 1461 ) / 4 );
  m_prime = floor ( ( 5 * t_prime + 2 ) / 153 );
  d_prime = floor ( mod ( 5 * t_prime + 2, 153 ) / 5 );
%
%  Convert the computational date to a calendar date.
%
  d = d_prime + 1;
  m = mod ( m_prime + 2, 12 ) + 1;
  y = y_prime - 4716 + floor ( ( 14 - m ) / 12 );
%
%  Any year before 1 AD must be moved one year further back, since
%  this calendar does not include a year 0.
%
  y = y_astronomical_to_common ( y );

  return
end
