
erlang=/c/Program\ Files/erl5.9.1/bin/erl.exe

"$erlang" << EOF
{ok, bowling} = c(bowling),
{ok, Alley} = bowling:start().


bowling:score([1,2,3,4,5]).

q().
EOF



