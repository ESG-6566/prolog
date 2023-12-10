% 3 translate(List1, List 2)	 such as translate([1 , 2], [one, two])
% use	means(0, zero), means(1, one), …

% Define translation meansmeans(0, zero).
means(1, one).
means(2, two).
means(3, three).
means(4, four).
means(5, five).
means(6, six).
means(7, seven).
means(8, eight).
means(9, nine).

% Base case: translating an empty list results in an empty list
translate([], []).

% Recursive case: translate each element of the list
translate([Num | Rest], [Word | TranslatedRest]) :-
    means(Num, Word),
    translate(Rest, TranslatedRest).

% Initialization directive to set a goal
:- initialization(main).

main :-
    % Example usage
    translate([1, 2], Translated),
    % Translated will be [one, two]
    write(Translated),nl,
    halt. % Halt the program
