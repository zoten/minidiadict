%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module('3gpp').

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records(['3gpp_Terminal-Information',
		 '3gpp_Vendor-Specific-Application-Id']).

-record('3gpp_Terminal-Information',
	{'IMEI' = [], '3GPP2-MEID' = [],
	 'Software-Version' = [], 'AVP' = []}).

-record('3gpp_Vendor-Specific-Application-Id',
	{'Vendor-Id', 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/3, encode_avps/3, grouped_avp/4, msg_name/2,
	 msg_header/1, rec2msg/1, msg2rec/1, name2rec/1,
	 avp_name/2, avp_arity/1, avp_arity/2, avp_header/1,
	 avp/4, enumerated_avp/3, empty_value/2, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> '3gpp'.

id() -> erlang:error(badarg).

vendor_id() -> 10415.

vendor_name() -> '3GPP'.

msg_name(_, _) -> ''.

msg_header(_) -> erlang:error(badarg).

rec2msg(_) -> erlang:error(badarg).

msg2rec(_) -> erlang:error(badarg).

name2rec('Terminal-Information') ->
    '3gpp_Terminal-Information';
name2rec('Vendor-Specific-Application-Id') ->
    '3gpp_Vendor-Specific-Application-Id';
name2rec(T) -> msg2rec(T).

avp_name(1471, 10415) -> {'3GPP2-MEID', 'OctetString'};
avp_name(301, 10415) -> {'DRMP', 'Enumerated'};
avp_name(1445, 10415) ->
    {'Equipment-Status', 'Enumerated'};
avp_name(1402, 10415) -> {'IMEI', 'UTF8String'};
avp_name(1403, 10415) ->
    {'Software-Version', 'UTF8String'};
avp_name(1401, 10415) ->
    {'Terminal-Information', 'Grouped'};
avp_name(266, undefined) -> {'Vendor-Id', 'Unsigned32'};
avp_name(258, undefined) ->
    {'Auth-Application-Id', 'Unsigned32'};
avp_name(1, undefined) -> {'User-Name', 'UTF8String'};
avp_name(259, undefined) ->
    {'Acct-Application-Id', 'Unsigned32'};
avp_name(260, undefined) ->
    {'Vendor-Specific-Application-Id', 'Grouped'};
avp_name(_, _) -> 'AVP'.

avp_arity('Terminal-Information') ->
    [{'IMEI', {0, 1}}, {'3GPP2-MEID', {0, 1}},
     {'Software-Version', {0, 1}}, {'AVP', {0, '*'}}];
avp_arity('Vendor-Specific-Application-Id') ->
    [{'Vendor-Id', 1}, {'Auth-Application-Id', {0, 1}},
     {'Acct-Application-Id', {0, 1}}];
avp_arity(_) -> erlang:error(badarg).

avp_arity('Terminal-Information', 'IMEI') -> {0, 1};
avp_arity('Terminal-Information', '3GPP2-MEID') ->
    {0, 1};
avp_arity('Terminal-Information', 'Software-Version') ->
    {0, 1};
avp_arity('Terminal-Information', 'AVP') -> {0, '*'};
avp_arity('Vendor-Specific-Application-Id',
	  'Vendor-Id') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
	  'Auth-Application-Id') ->
    {0, 1};
avp_arity('Vendor-Specific-Application-Id',
	  'Acct-Application-Id') ->
    {0, 1};
avp_arity(_, _) -> 0.

avp_header('3GPP2-MEID') -> {1471, 192, 10415};
avp_header('DRMP') -> {301, 128, 10415};
avp_header('Equipment-Status') -> {1445, 192, 10415};
avp_header('IMEI') -> {1402, 192, 10415};
avp_header('Software-Version') -> {1403, 192, 10415};
avp_header('Terminal-Information') ->
    {1401, 192, 10415};
avp_header('Vendor-Id') ->
    diameter_gen_base_rfc6733:avp_header('Vendor-Id');
avp_header('Auth-Application-Id') ->
    diameter_gen_base_rfc6733:avp_header('Auth-Application-Id');
avp_header('User-Name') ->
    diameter_gen_base_rfc6733:avp_header('User-Name');
avp_header('Acct-Application-Id') ->
    diameter_gen_base_rfc6733:avp_header('Acct-Application-Id');
avp_header('Vendor-Specific-Application-Id') ->
    diameter_gen_base_rfc6733:avp_header('Vendor-Specific-Application-Id');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, '3GPP2-MEID', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'DRMP', _) ->
    enumerated_avp(T, 'DRMP', Data);
avp(T, Data, 'Equipment-Status', _) ->
    enumerated_avp(T, 'Equipment-Status', Data);
avp(T, Data, 'IMEI', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Software-Version', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Terminal-Information', Opts) ->
    grouped_avp(T, 'Terminal-Information', Data, Opts);
avp(T, Data, 'Vendor-Id', Opts) ->
    avp(T, Data, 'Vendor-Id', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Auth-Application-Id', Opts) ->
    avp(T, Data, 'Auth-Application-Id', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'User-Name', Opts) ->
    avp(T, Data, 'User-Name', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Acct-Application-Id', Opts) ->
    avp(T, Data, 'Acct-Application-Id', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Vendor-Specific-Application-Id', Opts) ->
    grouped_avp(T, 'Vendor-Specific-Application-Id', Data,
		Opts);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'DRMP', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'DRMP', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'DRMP', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 2>>) -> 2;
enumerated_avp(encode, 'DRMP', 2) -> <<0, 0, 0, 2>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 3>>) -> 3;
enumerated_avp(encode, 'DRMP', 3) -> <<0, 0, 0, 3>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 4>>) -> 4;
enumerated_avp(encode, 'DRMP', 4) -> <<0, 0, 0, 4>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 5>>) -> 5;
enumerated_avp(encode, 'DRMP', 5) -> <<0, 0, 0, 5>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 6>>) -> 6;
enumerated_avp(encode, 'DRMP', 6) -> <<0, 0, 0, 6>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 7>>) -> 7;
enumerated_avp(encode, 'DRMP', 7) -> <<0, 0, 0, 7>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 8>>) -> 8;
enumerated_avp(encode, 'DRMP', 8) -> <<0, 0, 0, 8>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 9>>) -> 9;
enumerated_avp(encode, 'DRMP', 9) -> <<0, 0, 0, 9>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 10>>) -> 10;
enumerated_avp(encode, 'DRMP', 10) -> <<0, 0, 0, 10>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 11>>) -> 11;
enumerated_avp(encode, 'DRMP', 11) -> <<0, 0, 0, 11>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 12>>) -> 12;
enumerated_avp(encode, 'DRMP', 12) -> <<0, 0, 0, 12>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 13>>) -> 13;
enumerated_avp(encode, 'DRMP', 13) -> <<0, 0, 0, 13>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 14>>) -> 14;
enumerated_avp(encode, 'DRMP', 14) -> <<0, 0, 0, 14>>;
enumerated_avp(decode, 'DRMP', <<0, 0, 0, 15>>) -> 15;
enumerated_avp(encode, 'DRMP', 15) -> <<0, 0, 0, 15>>;
enumerated_avp(decode, 'Equipment-Status',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Equipment-Status', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Equipment-Status',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Equipment-Status', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Equipment-Status',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Equipment-Status', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Terminal-Information', Opts) ->
    empty_group('Terminal-Information', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
empty_value('DRMP', _) -> <<0, 0, 0, 0>>;
empty_value('Equipment-Status', _) -> <<0, 0, 0, 0>>;
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"3GPP2-MEID", 1471, "OctetString", "MV"},
       {"DRMP", 301, "Enumerated", "V"},
       {"Equipment-Status", 1445, "Enumerated", "MV"},
       {"IMEI", 1402, "UTF8String", "MV"},
       {"Software-Version", 1403, "UTF8String", "MV"},
       {"Terminal-Information", 1401, "Grouped", "MV"}]},
     {avp_vendor_id, []}, {codecs, []}, {command_codes, []},
     {custom_types, []}, {define, []},
     {enum,
      [{"DRMP",
	[{"PRIORITY_0", 0}, {"PRIORITY_1", 1},
	 {"PRIORITY_2", 2}, {"PRIORITY_3", 3}, {"PRIORITY_4", 4},
	 {"PRIORITY_5", 5}, {"PRIORITY_6", 6}, {"PRIORITY_7", 7},
	 {"PRIORITY_8", 8}, {"PRIORITY_9", 9},
	 {"PRIORITY_10", 10}, {"PRIORITY_11", 11},
	 {"PRIORITY_12", 12}, {"PRIORITY_13", 13},
	 {"PRIORITY_14", 14}, {"PRIORITY_15", 15}]},
       {"Equipment-Status",
	[{"WHITELISTED", 0}, {"BLACKLISTED", 1},
	 {"GREYLISTED", 2}]}]},
     {grouped,
      [{"Terminal-Information", 1401, [],
	[["IMEI"], ["3GPP2-MEID"], ["Software-Version"],
	 {'*', ["AVP"]}]}]},
     {import_avps,
      [{diameter_gen_base_rfc6733,
	[{"Vendor-Id", 266, "Unsigned32", "M"},
	 {"Auth-Application-Id", 258, "Unsigned32", "M"},
	 {"User-Name", 1, "UTF8String", "M"},
	 {"Acct-Application-Id", 259, "Unsigned32", "M"},
	 {"Vendor-Specific-Application-Id", 260, "Grouped",
	  "M"}]}]},
     {import_enums, []},
     {import_groups,
      [{diameter_gen_base_rfc6733,
	[{"Vendor-Specific-Application-Id", 260, [],
	  [{"Vendor-Id"}, ["Auth-Application-Id"],
	   ["Acct-Application-Id"]]}]}]},
     {inherits,
      [{"diameter_gen_base_rfc6733",
	["Vendor-Id", "Auth-Application-Id", "User-Name",
	 "Acct-Application-Id",
	 "Vendor-Specific-Application-Id"]}]},
     {messages, []}, {name, "3gpp"}, {prefix, "3gpp"},
     {vendor, {10415, "3GPP"}}].


