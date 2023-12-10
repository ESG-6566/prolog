% 1:  (L1,L2)  (leftShift, rightShift)
% Left shift of a list
leftShift([], []).

leftShift([Head | Tail], Shifted) :-
    append(Tail, [Head], Shifted).

% Right shift of a list
rightShift([], []).

rightShift(List, Shifted) :-
    reverse(List, Reversed),
    leftShift(Reversed, ShiftedReversed),
    reverse(ShiftedReversed, Shifted).

% Initialization directive to set a goal
:- initialization(main).

main :-
    % Example usage
    leftShift([1, 2, 3, 4, 5], ShiftedLeft),
    rightShift([1, 2, 3, 4, 5], ShiftedRight),
    write('Left Shifted: '), write(ShiftedLeft), nl,
    write('Right Shifted: '), write(ShiftedRight), nl,
    halt. % Halt the program
