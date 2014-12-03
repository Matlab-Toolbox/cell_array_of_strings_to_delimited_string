
  %% run_spec
  clear;
  %% Clear import list to test correct library
%   clear import; 

%   %% For Packages
%   %    Add package to path (+function folder must be on path)
%   addpath('../package/');
% 
%   %    Import functions 
%   import padarray_pkg.* 

  %% For Functions
  %    Add function to path
  addpath('../function/');

  error_count = 0;
  pass_count  = 0;
  
  %% Test Vectors (default delimiter)
  test = {};
  test(end+1).input = {'one', 'two'};          test(end).expect = 'one, two';
  test(end+1).input = {'one', 'two', 'three'}; test(end).expect = 'one, two, three';
  test(end+1).input = {'a', 'b', 'c', 'd', 'e'}; test(end).expect = 'a, b, c, d, e';

  
  for vector=1:size(test, 2)
    b           = cell_array_of_strings_to_delimited_string(test(vector).input );
    if (  ~isequal(b, test(vector).expect )  )
      disp('dell_array_of_strings_to_delimited_string() Failed ')
      error_count = error_count + 1;
    else
      pass_count  = pass_count  + 1;
    end
  end
  
  
    %% Test Vectors (setting delimiter)
  test = {};
  test(end+1).input = {'one', 'two'};          test(end).delim = ', '; test(end).expect = 'one, two';
  test(end+1).input = {'one', 'two', 'three'}; test(end).delim = ', '; test(end).expect = 'one, two, three';
  test(end+1).input = {'a', 'b', 'c', 'd', 'e'}; test(end).delim = ', '; test(end).expect = 'a, b, c, d, e';
  test(end+1).input = {'a', 'b', 'c', 'd', 'e'}; test(end).delim = ',';  test(end).expect = 'a,b,c,d,e';
  test(end+1).input = {'a', 'b', 'c', 'd', 'e'}; test(end).delim = '; '; test(end).expect = 'a; b; c; d; e';
  test(end+1).input = {'a', 'b', 'c', 'd', 'e'}; test(end).delim = '-'; test(end).expect = 'a-b-c-d-e';
  test(end+1).input = {'a', 'b', 'c', 'd', 'e'}; test(end).delim = ''; test(end).expect = 'abcde';
  %% The tests


  for vector=1:size(test, 2)
    b           = cell_array_of_strings_to_delimited_string(test(vector).input, test(vector).delim );
    if (  ~isequal(b, test(vector).expect )  )
      disp('dell_array_of_strings_to_delimited_string() Failed ')
      error_count = error_count + 1;
    else
      pass_count  = pass_count  + 1;
    end
  end

  %% Test Status Report
  if error_count > 0
    disp(['Test FAILED : ', num2str(pass_count), ' passes and ',num2str(error_count),' fails'])
  else
    disp(['Test Passed : ', num2str(pass_count), ' checks ran '])
  end

