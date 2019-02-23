%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('3gpp.hrl').


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

-record('3gpp_Terminal-Information',
	{'IMEI' = [], '3GPP2-MEID' = [],
	 'Software-Version' = [], 'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-record('3gpp_Vendor-Specific-Application-Id',
	{'Vendor-Id', 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('3GPP_DRMP_PRIORITY_0', 0).
-define('3GPP_DRMP_PRIORITY_1', 1).
-define('3GPP_DRMP_PRIORITY_2', 2).
-define('3GPP_DRMP_PRIORITY_3', 3).
-define('3GPP_DRMP_PRIORITY_4', 4).
-define('3GPP_DRMP_PRIORITY_5', 5).
-define('3GPP_DRMP_PRIORITY_6', 6).
-define('3GPP_DRMP_PRIORITY_7', 7).
-define('3GPP_DRMP_PRIORITY_8', 8).
-define('3GPP_DRMP_PRIORITY_9', 9).
-define('3GPP_DRMP_PRIORITY_10', 10).
-define('3GPP_DRMP_PRIORITY_11', 11).
-define('3GPP_DRMP_PRIORITY_12', 12).
-define('3GPP_DRMP_PRIORITY_13', 13).
-define('3GPP_DRMP_PRIORITY_14', 14).
-define('3GPP_DRMP_PRIORITY_15', 15).
-define('3GPP_EQUIPMENT-STATUS_WHITELISTED', 0).
-define('3GPP_EQUIPMENT-STATUS_BLACKLISTED', 1).
-define('3GPP_EQUIPMENT-STATUS_GREYLISTED', 2).

