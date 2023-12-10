% Base case: an empty list is a palindrome
palindrome([]).

% Case: a list with one element is a palindrome
palindrome([_]).

% Recursive case: check if the first and last elements are equal, and the rest is a palindrome
palindrome(List) :-
    append([First|Middle], [Last], List),
    First = Last,
    palindrome(Middle).

% Predicate to check if a list is a palindrome
is_palindrome(List) :-
    palindrome(List),
    write('yes'), nl.

is_palindrome(_) :-
    write('no'), nl.

% Initialization directive to set a goal
:- initialization(main).

main :-
    % Example usage
    is_palindrome([m, a, d, a, m]),
    halt. % Halt the program
