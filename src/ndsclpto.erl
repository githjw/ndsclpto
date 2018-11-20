
-module(ndsclpto).
-author('alexey@process-one.net').
-compile({no_auto_import, [{halt, 0}]}).



-export([start/0, stop/0]).



start() ->
    %%ejabberd_cover:start(),
    application:start(ndsclpto).

stop() ->
    application:stop(ndsclpto).
    %%ejabberd_cover:stop().