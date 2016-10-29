-module(korpkopi_test).
-compile(export_all).

% Include etest's assertion macros.
-include_lib("etest/include/etest.hrl").

-include_lib("etest_http/include/etest_http.hrl").

test_the_main_page_is_available() ->
	Response = ?perform_get("http://localhost:8080/be"),
    ?assert_status(200, Response),
    %?assert_body_contains("<ANSWER>main page</ANSWER>", Response),
    ?assert_body("<ANSWER>main page</ANSWER>", Response).

%test_the_otp_is_sent() ->
%	Response = ?perform_post("http://localhost:8080/be/auth?phone=%2B102"),
%	?assert_status(200, Response),
%	?assert_body_contains("<OTP>otp sended successful</OTP>", Response).
