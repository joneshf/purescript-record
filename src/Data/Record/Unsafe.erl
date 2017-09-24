-module(data_record_unsafe@foreign).
-export([unsafeDeleteFn/0, unsafeGetFn/0, unsafeSetFn/0]).

unsafeDeleteFn() ->
    fun (Key, Map) ->
        maps:remove(binary_to_atom(Key), Map)
    end.

unsafeGetFn() ->
    fun (Key, Map) ->
        maps:get(binary_to_atom(Key), Map)
    end.

unsafeSetFn() ->
    fun (Key, Value, Map) ->
        maps:put(binary_to_atom(Key), Value, Map)
    end.

binary_to_atom(Bin) -> list_to_atom(binary_to_list(Bin)).
