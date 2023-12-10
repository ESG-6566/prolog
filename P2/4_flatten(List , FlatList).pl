% 4 flatten(List , FlatList)
% - flatten([a,b,[c,d],[ ],[[[e]]],f],L)
% L= [a,b,c,d,e,f]

% Base case an empty list is already flattened
my_flatten([], []).

% Case flatten a non-empty list
my_flatten([HeadTail], FlatList) -
    my_flatten(Head, FlatHead),
    my_flatten(Tail, FlatTail),
    append(FlatHead, FlatTail, FlatList).

% Case flatten an atomic element (e.g., a single element list)
my_flatten(Atom, [Atom]) - + is_list(Atom).

% Initialization directive to set a goal
- initialization(main).

main -
    % Example usage
    my_flatten([a, b, [c, d], [], [[[e]]], f], FlatList),
    write('Flattened List '), write(FlatList), nl,
    halt. % Halt the program
