%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(ts29272_s13).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records([ts29272_s13_ECR, ts29272_s13_ECA,
		 'ts29272_s13_Proxy-Info', 'ts29272_s13_Failed-AVP',
		 'ts29272_s13_Experimental-Result',
		 'ts29272_s13_Vendor-Specific-Application-Id',
		 'ts29272_s13_Terminal-Information']).

-record(ts29272_s13_ECR,
	{'Session-Id', 'Auth-Session-State', 'Origin-Host',
	 'Origin-Realm', 'Destination-Realm',
	 'Terminal-Information', 'DRMP' = [],
	 'Vendor-Specific-Application-Id' = [],
	 'Destination-Host' = [], 'User-Name' = [], 'AVP' = [],
	 'Proxy-Info' = [], 'Route-Record' = []}).

-record(ts29272_s13_ECA,
	{'Session-Id', 'Auth-Session-State', 'Origin-Host',
	 'Origin-Realm', 'DRMP' = [],
	 'Vendor-Specific-Application-Id' = [],
	 'Result-Code' = [], 'Experimental-Result' = [],
	 'Equipment-Status' = [], 'AVP' = [], 'Failed-AVP' = [],
	 'Proxy-Info' = [], 'Route-Record' = []}).

-record('ts29272_s13_Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('ts29272_s13_Failed-AVP', {'AVP' = []}).

-record('ts29272_s13_Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('ts29272_s13_Vendor-Specific-Application-Id',
	{'Vendor-Id', 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('ts29272_s13_Terminal-Information',
	{'IMEI' = [], '3GPP2-MEID' = [],
	 'Software-Version' = [], 'AVP' = []}).

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/3, encode_avps/3, grouped_avp/4, msg_name/2,
	 msg_header/1, rec2msg/1, msg2rec/1, name2rec/1,
	 avp_name/2, avp_arity/1, avp_arity/2, avp_header/1,
	 avp/4, enumerated_avp/3, empty_value/2, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> ts29272_s13.

id() -> 16777252.

vendor_id() -> 10415.

vendor_name() -> '3GPP'.

msg_name(324, true) -> 'ECR';
msg_name(324, false) -> 'ECA';
msg_name(_, _) -> ''.

msg_header('ECR') -> {324, 192, 16777252};
msg_header('ECA') -> {324, 64, 16777252};
msg_header(_) -> erlang:error(badarg).

rec2msg(ts29272_s13_ECR) -> 'ECR';
rec2msg(ts29272_s13_ECA) -> 'ECA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('ECR') -> ts29272_s13_ECR;
msg2rec('ECA') -> ts29272_s13_ECA;
msg2rec(_) -> erlang:error(badarg).

name2rec('Proxy-Info') -> 'ts29272_s13_Proxy-Info';
name2rec('Failed-AVP') -> 'ts29272_s13_Failed-AVP';
name2rec('Experimental-Result') ->
    'ts29272_s13_Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'ts29272_s13_Vendor-Specific-Application-Id';
name2rec('Terminal-Information') ->
    'ts29272_s13_Terminal-Information';
name2rec(T) -> msg2rec(T).

avp_name(263, undefined) ->
    {'Session-Id', 'UTF8String'};
avp_name(297, undefined) ->
    {'Experimental-Result', 'Grouped'};
avp_name(260, undefined) ->
    {'Vendor-Specific-Application-Id', 'Grouped'};
avp_name(282, undefined) ->
    {'Route-Record', 'DiameterIdentity'};
avp_name(284, undefined) -> {'Proxy-Info', 'Grouped'};
avp_name(279, undefined) -> {'Failed-AVP', 'Grouped'};
avp_name(283, undefined) ->
    {'Destination-Realm', 'DiameterIdentity'};
avp_name(1, undefined) -> {'User-Name', 'UTF8String'};
avp_name(264, undefined) ->
    {'Origin-Host', 'DiameterIdentity'};
avp_name(277, undefined) ->
    {'Auth-Session-State', 'Enumerated'};
avp_name(296, undefined) ->
    {'Origin-Realm', 'DiameterIdentity'};
avp_name(293, undefined) ->
    {'Destination-Host', 'DiameterIdentity'};
avp_name(268, undefined) ->
    {'Result-Code', 'Unsigned32'};
avp_name(1471, 10415) -> {'3GPP2-MEID', 'OctetString'};
avp_name(301, 10415) -> {'DRMP', 'Enumerated'};
avp_name(1445, 10415) ->
    {'Equipment-Status', 'Enumerated'};
avp_name(1402, 10415) -> {'IMEI', 'UTF8String'};
avp_name(1403, 10415) ->
    {'Software-Version', 'UTF8String'};
avp_name(1401, 10415) ->
    {'Terminal-Information', 'Grouped'};
avp_name(_, _) -> 'AVP'.

avp_arity('ECR') ->
    [{'Session-Id', 1}, {'Auth-Session-State', 1},
     {'Origin-Host', 1}, {'Origin-Realm', 1},
     {'Destination-Realm', 1}, {'Terminal-Information', 1},
     {'DRMP', {0, 1}},
     {'Vendor-Specific-Application-Id', {0, 1}},
     {'Destination-Host', {0, 1}}, {'User-Name', {0, 1}},
     {'AVP', {0, '*'}}, {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}}];
avp_arity('ECA') ->
    [{'Session-Id', 1}, {'Auth-Session-State', 1},
     {'Origin-Host', 1}, {'Origin-Realm', 1},
     {'DRMP', {0, 1}},
     {'Vendor-Specific-Application-Id', {0, 1}},
     {'Result-Code', {0, 1}},
     {'Experimental-Result', {0, 1}},
     {'Equipment-Status', {0, 1}}, {'AVP', {0, '*'}},
     {'Failed-AVP', {0, '*'}}, {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}}];
avp_arity('Proxy-Info') ->
    [{'Proxy-Host', 1}, {'Proxy-State', 1},
     {'AVP', {0, '*'}}];
avp_arity('Failed-AVP') -> [{'AVP', {1, '*'}}];
avp_arity('Experimental-Result') ->
    [{'Vendor-Id', 1}, {'Experimental-Result-Code', 1}];
avp_arity('Vendor-Specific-Application-Id') ->
    [{'Vendor-Id', 1}, {'Auth-Application-Id', {0, 1}},
     {'Acct-Application-Id', {0, 1}}];
avp_arity('Terminal-Information') ->
    [{'IMEI', {0, 1}}, {'3GPP2-MEID', {0, 1}},
     {'Software-Version', {0, 1}}, {'AVP', {0, '*'}}];
avp_arity(_) -> erlang:error(badarg).

avp_arity('ECR', 'Session-Id') -> 1;
avp_arity('ECR', 'Auth-Session-State') -> 1;
avp_arity('ECR', 'Origin-Host') -> 1;
avp_arity('ECR', 'Origin-Realm') -> 1;
avp_arity('ECR', 'Destination-Realm') -> 1;
avp_arity('ECR', 'Terminal-Information') -> 1;
avp_arity('ECR', 'DRMP') -> {0, 1};
avp_arity('ECR', 'Vendor-Specific-Application-Id') ->
    {0, 1};
avp_arity('ECR', 'Destination-Host') -> {0, 1};
avp_arity('ECR', 'User-Name') -> {0, 1};
avp_arity('ECR', 'AVP') -> {0, '*'};
avp_arity('ECR', 'Proxy-Info') -> {0, '*'};
avp_arity('ECR', 'Route-Record') -> {0, '*'};
avp_arity('ECA', 'Session-Id') -> 1;
avp_arity('ECA', 'Auth-Session-State') -> 1;
avp_arity('ECA', 'Origin-Host') -> 1;
avp_arity('ECA', 'Origin-Realm') -> 1;
avp_arity('ECA', 'DRMP') -> {0, 1};
avp_arity('ECA', 'Vendor-Specific-Application-Id') ->
    {0, 1};
avp_arity('ECA', 'Result-Code') -> {0, 1};
avp_arity('ECA', 'Experimental-Result') -> {0, 1};
avp_arity('ECA', 'Equipment-Status') -> {0, 1};
avp_arity('ECA', 'AVP') -> {0, '*'};
avp_arity('ECA', 'Failed-AVP') -> {0, '*'};
avp_arity('ECA', 'Proxy-Info') -> {0, '*'};
avp_arity('ECA', 'Route-Record') -> {0, '*'};
avp_arity('Proxy-Info', 'Proxy-Host') -> 1;
avp_arity('Proxy-Info', 'Proxy-State') -> 1;
avp_arity('Proxy-Info', 'AVP') -> {0, '*'};
avp_arity('Failed-AVP', 'AVP') -> {1, '*'};
avp_arity('Experimental-Result', 'Vendor-Id') -> 1;
avp_arity('Experimental-Result',
	  'Experimental-Result-Code') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
	  'Vendor-Id') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
	  'Auth-Application-Id') ->
    {0, 1};
avp_arity('Vendor-Specific-Application-Id',
	  'Acct-Application-Id') ->
    {0, 1};
avp_arity('Terminal-Information', 'IMEI') -> {0, 1};
avp_arity('Terminal-Information', '3GPP2-MEID') ->
    {0, 1};
avp_arity('Terminal-Information', 'Software-Version') ->
    {0, 1};
avp_arity('Terminal-Information', 'AVP') -> {0, '*'};
avp_arity(_, _) -> 0.

avp_header('Session-Id') ->
    diameter_gen_base_rfc6733:avp_header('Session-Id');
avp_header('Experimental-Result') ->
    diameter_gen_base_rfc6733:avp_header('Experimental-Result');
avp_header('Vendor-Specific-Application-Id') ->
    diameter_gen_base_rfc6733:avp_header('Vendor-Specific-Application-Id');
avp_header('Route-Record') ->
    diameter_gen_base_rfc6733:avp_header('Route-Record');
avp_header('Proxy-Info') ->
    diameter_gen_base_rfc6733:avp_header('Proxy-Info');
avp_header('Failed-AVP') ->
    diameter_gen_base_rfc6733:avp_header('Failed-AVP');
avp_header('Destination-Realm') ->
    diameter_gen_base_rfc6733:avp_header('Destination-Realm');
avp_header('User-Name') ->
    diameter_gen_base_rfc6733:avp_header('User-Name');
avp_header('Origin-Host') ->
    diameter_gen_base_rfc6733:avp_header('Origin-Host');
avp_header('Auth-Session-State') ->
    diameter_gen_base_rfc6733:avp_header('Auth-Session-State');
avp_header('Origin-Realm') ->
    diameter_gen_base_rfc6733:avp_header('Origin-Realm');
avp_header('Destination-Host') ->
    diameter_gen_base_rfc6733:avp_header('Destination-Host');
avp_header('Result-Code') ->
    diameter_gen_base_rfc6733:avp_header('Result-Code');
avp_header('3GPP2-MEID') ->
    '3gpp':avp_header('3GPP2-MEID');
avp_header('DRMP') -> '3gpp':avp_header('DRMP');
avp_header('Equipment-Status') ->
    '3gpp':avp_header('Equipment-Status');
avp_header('IMEI') -> '3gpp':avp_header('IMEI');
avp_header('Software-Version') ->
    '3gpp':avp_header('Software-Version');
avp_header('Terminal-Information') ->
    '3gpp':avp_header('Terminal-Information');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Session-Id', Opts) ->
    avp(T, Data, 'Session-Id', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Experimental-Result', Opts) ->
    grouped_avp(T, 'Experimental-Result', Data, Opts);
avp(T, Data, 'Vendor-Specific-Application-Id', Opts) ->
    grouped_avp(T, 'Vendor-Specific-Application-Id', Data,
		Opts);
avp(T, Data, 'Route-Record', Opts) ->
    avp(T, Data, 'Route-Record', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Proxy-Info', Opts) ->
    grouped_avp(T, 'Proxy-Info', Data, Opts);
avp(T, Data, 'Failed-AVP', Opts) ->
    grouped_avp(T, 'Failed-AVP', Data, Opts);
avp(T, Data, 'Destination-Realm', Opts) ->
    avp(T, Data, 'Destination-Realm', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'User-Name', Opts) ->
    avp(T, Data, 'User-Name', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Origin-Host', Opts) ->
    avp(T, Data, 'Origin-Host', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Auth-Session-State', Opts) ->
    avp(T, Data, 'Auth-Session-State', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Origin-Realm', Opts) ->
    avp(T, Data, 'Origin-Realm', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Destination-Host', Opts) ->
    avp(T, Data, 'Destination-Host', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, 'Result-Code', Opts) ->
    avp(T, Data, 'Result-Code', Opts,
	diameter_gen_base_rfc6733);
avp(T, Data, '3GPP2-MEID', Opts) ->
    avp(T, Data, '3GPP2-MEID', Opts, '3gpp');
avp(T, Data, 'DRMP', Opts) ->
    avp(T, Data, 'DRMP', Opts, '3gpp');
avp(T, Data, 'Equipment-Status', Opts) ->
    avp(T, Data, 'Equipment-Status', Opts, '3gpp');
avp(T, Data, 'IMEI', Opts) ->
    avp(T, Data, 'IMEI', Opts, '3gpp');
avp(T, Data, 'Software-Version', Opts) ->
    avp(T, Data, 'Software-Version', Opts, '3gpp');
avp(T, Data, 'Terminal-Information', Opts) ->
    grouped_avp(T, 'Terminal-Information', Data, Opts);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Proxy-Info', Opts) ->
    empty_group('Proxy-Info', Opts);
empty_value('Failed-AVP', Opts) ->
    empty_group('Failed-AVP', Opts);
empty_value('Experimental-Result', Opts) ->
    empty_group('Experimental-Result', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
empty_value('Terminal-Information', Opts) ->
    empty_group('Terminal-Information', Opts);
empty_value('Auth-Session-State', _) -> <<0, 0, 0, 0>>;
empty_value('DRMP', _) -> <<0, 0, 0, 0>>;
empty_value('Equipment-Status', _) -> <<0, 0, 0, 0>>;
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1, {avp_types, []}, {avp_vendor_id, []}, {codecs, []},
     {command_codes, [{324, "ECR", "ECA"}]},
     {custom_types, []}, {define, []}, {enum, []},
     {grouped, []}, {id, 16777252},
     {import_avps,
      [{diameter_gen_base_rfc6733,
	[{"Session-Id", 263, "UTF8String", "M"},
	 {"Experimental-Result", 297, "Grouped", "M"},
	 {"Vendor-Specific-Application-Id", 260, "Grouped", "M"},
	 {"Route-Record", 282, "DiameterIdentity", "M"},
	 {"Proxy-Info", 284, "Grouped", "M"},
	 {"Failed-AVP", 279, "Grouped", "M"},
	 {"Destination-Realm", 283, "DiameterIdentity", "M"},
	 {"User-Name", 1, "UTF8String", "M"},
	 {"Origin-Host", 264, "DiameterIdentity", "M"},
	 {"Auth-Session-State", 277, "Enumerated", "M"},
	 {"Origin-Realm", 296, "DiameterIdentity", "M"},
	 {"Destination-Host", 293, "DiameterIdentity", "M"},
	 {"Result-Code", 268, "Unsigned32", "M"}]},
       {'3gpp',
	[{"3GPP2-MEID", 1471, "OctetString", "MV"},
	 {"DRMP", 301, "Enumerated", "V"},
	 {"Equipment-Status", 1445, "Enumerated", "MV"},
	 {"IMEI", 1402, "UTF8String", "MV"},
	 {"Software-Version", 1403, "UTF8String", "MV"},
	 {"Terminal-Information", 1401, "Grouped", "MV"}]}]},
     {import_enums,
      [{diameter_gen_base_rfc6733,
	[{"Auth-Session-State",
	  [{"STATE_MAINTAINED", 0},
	   {"NO_STATE_MAINTAINED", 1}]}]},
       {'3gpp',
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
	   {"GREYLISTED", 2}]}]}]},
     {import_groups,
      [{diameter_gen_base_rfc6733,
	[{"Proxy-Info", 284, [],
	  [{"Proxy-Host"}, {"Proxy-State"}, {'*', ["AVP"]}]},
	 {"Failed-AVP", 279, [], [{'*', {"AVP"}}]},
	 {"Experimental-Result", 297, [],
	  [{"Vendor-Id"}, {"Experimental-Result-Code"}]},
	 {"Vendor-Specific-Application-Id", 260, [],
	  [{"Vendor-Id"}, ["Auth-Application-Id"],
	   ["Acct-Application-Id"]]}]},
       {'3gpp',
	[{"Terminal-Information", 1401, [],
	  [["IMEI"], ["3GPP2-MEID"], ["Software-Version"],
	   {'*', ["AVP"]}]}]}]},
     {inherits,
      [{"3gpp", []},
       {"diameter_gen_base_rfc6733",
	["Session-Id", "Experimental-Result",
	 "Vendor-Specific-Application-Id", "Route-Record",
	 "Proxy-Info", "Failed-AVP", "Destination-Realm",
	 "User-Name", "Origin-Host", "Auth-Session-State",
	 "Origin-Realm", "Destination-Host", "Result-Code"]}]},
     {messages,
      [{"ECR", 324, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Session-State"},
	 {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Terminal-Information"},
	 ["DRMP"], ["Vendor-Specific-Application-Id"],
	 ["Destination-Host"], ["User-Name"], {'*', ["AVP"]},
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]}]},
       {"ECA", 324, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Session-State"},
	 {"Origin-Host"}, {"Origin-Realm"}, ["DRMP"],
	 ["Vendor-Specific-Application-Id"], ["Result-Code"],
	 ["Experimental-Result"], ["Equipment-Status"],
	 {'*', ["AVP"]}, {'*', ["Failed-AVP"]},
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]}]}]},
     {name, "ts29272_s13"}, {prefix, "ts29272_s13"},
     {vendor, {10415, "3GPP"}}].


