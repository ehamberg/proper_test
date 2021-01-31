-module(prop_assoc).

-include_lib("proper/include/proper.hrl").

prop_assoc() ->
    ?FORALL(
        {A, B, C},
        {integer(), integer(), integer()},
        A + (B + C) =:= (A + B) + C
    ).
