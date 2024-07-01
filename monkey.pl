initial_state(state(at_door, on_floor, at_window, has_not)).

goal_state(state(_, _, _, has)).


action(state(middle, on_box, middle, has_not), grasp, state(middle, on_box, middle, has)).
action(state(P, on_floor, P, H), climb_box, state(P, on_box, P, H)).
action(state(P1, on_floor, P1, H), push_box(P1, P2), state(P2, on_floor, P2, H)).
action(state(P1, on_floor, B, H), walk(P1, P2), state(P2, on_floor, B, H)).

plan(State, [], State) :- goal_state(State).
plan(State1, [Action | RestActions], State3) :-
    action(State1, Action, State2),
    plan(State2, RestActions, State3).

find_plan(Plan) :-
    initial_state(State),
    plan(State, Plan, _).
