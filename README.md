
CellArrayOfStringsToDelimitedString
===================================

Download to toolbox then load into your project with:

    run('../path_to/cell_array_of_strings_to_delimited_string/load_function.m')

EXAMPLES
========
    CellArray = {'one', 'two'};
    a_string = cell_array_of_strings_to_delimited_string( CellArray )
    > 'one, two'
  
It can accept an optional delimiter (the defaul is ', '):
 
    a_string = cell_array_of_strings_to_delimited_string( CellArray, '-' )
    > 'one-two'
