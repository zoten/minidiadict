%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('ts29272_s13.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-record('ts29272_s13_Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('ts29272_s13_Failed-AVP', {'AVP' = []}).

-record('ts29272_s13_Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('ts29272_s13_Vendor-Specific-Application-Id',
	{'Vendor-Id', 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from 3gpp:
%%% -------------------------------------------------------

-record('ts29272_s13_Terminal-Information',
	{'IMEI' = [], '3GPP2-MEID' = [],
	 'Software-Version' = [], 'AVP' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-ifndef('TS29272_S13_AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('TS29272_S13_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('TS29272_S13_AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('TS29272_S13_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from 3gpp:
%%% -------------------------------------------------------

-ifndef('TS29272_S13_DRMP_PRIORITY_0').
-define('TS29272_S13_DRMP_PRIORITY_0', 0).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_1').
-define('TS29272_S13_DRMP_PRIORITY_1', 1).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_2').
-define('TS29272_S13_DRMP_PRIORITY_2', 2).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_3').
-define('TS29272_S13_DRMP_PRIORITY_3', 3).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_4').
-define('TS29272_S13_DRMP_PRIORITY_4', 4).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_5').
-define('TS29272_S13_DRMP_PRIORITY_5', 5).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_6').
-define('TS29272_S13_DRMP_PRIORITY_6', 6).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_7').
-define('TS29272_S13_DRMP_PRIORITY_7', 7).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_8').
-define('TS29272_S13_DRMP_PRIORITY_8', 8).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_9').
-define('TS29272_S13_DRMP_PRIORITY_9', 9).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_10').
-define('TS29272_S13_DRMP_PRIORITY_10', 10).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_11').
-define('TS29272_S13_DRMP_PRIORITY_11', 11).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_12').
-define('TS29272_S13_DRMP_PRIORITY_12', 12).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_13').
-define('TS29272_S13_DRMP_PRIORITY_13', 13).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_14').
-define('TS29272_S13_DRMP_PRIORITY_14', 14).
-endif.
-ifndef('TS29272_S13_DRMP_PRIORITY_15').
-define('TS29272_S13_DRMP_PRIORITY_15', 15).
-endif.
-ifndef('TS29272_S13_EQUIPMENT-STATUS_WHITELISTED').
-define('TS29272_S13_EQUIPMENT-STATUS_WHITELISTED', 0).
-endif.
-ifndef('TS29272_S13_EQUIPMENT-STATUS_BLACKLISTED').
-define('TS29272_S13_EQUIPMENT-STATUS_BLACKLISTED', 1).
-endif.
-ifndef('TS29272_S13_EQUIPMENT-STATUS_GREYLISTED').
-define('TS29272_S13_EQUIPMENT-STATUS_GREYLISTED', 2).
-endif.

