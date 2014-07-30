-module(korpkopi_test).
-compile(export_all).

% Include etest's assertion macros.
-include_lib("etest/include/etest.hrl").

-include_lib("etest_http/include/etest_http.hrl").

test_the_main_page_is_available() ->
	Response = ?perform_get("http://localhost:8080/korpkopi"),
    ?assert_status(200, Response),
    ?assert_body_contains("<ANSWER>main page</ANSWER>", Response),
    ?assert_body("<ANSWER>main page</ANSWER>", Response).