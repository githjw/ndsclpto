-module(ndsclpto_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    io:format("Hello World!~n"),
    {T1, _} = statistics(wall_clock),
    start_apps(),
    ndsclpto_config:start(),
    ndsclpto_sup:start_link().

stop(_State) ->
    ok.


start_apps() ->
    io:format("Start apps!~n"),
    crypto:start(),
    ndsclpto:start_app(sasl),
    ndsclpto:start_app(ssl),
 
    ndsclpto:start_app(syntax_tools),
    ndsclpto:start_app(compiler), 
    ndsclpto:start_app(goldrush),   
    ndsclpto:start_app(lager),
    
    ndsclpto:start_app(fast_yaml).
