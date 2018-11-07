%% ---------------------------------
%% Logging mechanism

-define(PRINT(Format, Args),
    io:format(Format, Args)).

-define(PRINT_MSG(Msg),
    io:format(Msg)).