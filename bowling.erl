-module(bowling).
-export([start/0,score/1]).


start() ->
    {ok, spawn( fun () ->  loop() end )}.
    
loop() ->
    receive
        bye ->
            ok;
        more ->
            loop()
    end.
        
        
        

score([X,Y,Z|Tail])
    when X == 10    -> {frame, strike, 10 + Y + Z, [Y,Z|Tail]};    
score([X,Y,Z|Tail])
    when X+Y == 10  -> {frame, spare, X + Y + Z, [Z|Tail]};    
score([X,Y|Tail])
    when X+Y < 10   -> {frame, normal, X + Y, Tail};
score(Tail)            -> {roll_again, none, 0, Tail}

frame_scorer(Score, []) ->
    receive
        {roll, Downed} -> frame_scorer(


