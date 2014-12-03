
function [ s ] = cell_array_of_strings_to_delimited_string( input_args, delimiter )
%CELL_ARRAY_OF_STRINGS_TO_DELIMITED_STRING Does what it says on the tin.
%   CellArray = {'one', 'two'};
%   a_string = cell_array_of_strings_to_delimited_string( CellArray )
%   > 'one, two'
% 
%   It can accept an optional delimiter (the defaul is ', '):
%   a_string = cell_array_of_strings_to_delimited_string( CellArray, '-' )
%   > 'one-two'


  if (nargin < 1)
    error('Usage is cell_array_of_strings_to_delimited_string( CellArray, [delimiter] )')
  end
  if (nargin < 2)
    delimiter = ', ';
  end

  arr    = char(input_args);
  [y,x] = size(arr);
  s = [strtrim(arr(1,:))];
  for i = (2:y)
     s = [s, delimiter, strtrim(arr(i,:))];
  end

end
