SELECT * FROM sys.dm_exec_connections;


--------------------------------------------------------------------------------------

SELECT * FROM sys.dm_exec_sessions;

--------------------------------------------------------------------------------------

SELECT * FROM sys.dm_exec_requests;

--------------------------------------------------------------------------------------

SELECT connections.connection_id,
sessions.session_id, sessions.login_name, sessions.login_time,
requests.command, requests.start_time, requests.total_elapsed_time
FROM sys.dm_exec_connections AS connections
INNER JOIN sys.dm_exec_sessions AS sessions
   ON connections.session_id=sessions.session_id
INNER JOIN sys.dm_exec_requests AS requests
   ON requests.session_id = sessions.session_id
WHERE requests.status = 'running'
   AND requests.database_id = DB_ID()
ORDER BY requests.total_elapsed_time DESC;

--------------------------------------------------------------------------------------

WHILE 1 = 1
   SELECT * FROM Trip;



--------------------------------------------------------------------------------------

SELECT * FROM queryinsights.exec_requests_history;

--------------------------------------------------------------------------------------

SELECT * FROM queryinsights.frequently_run_queries;

--------------------------------------------------------------------------------------

SELECT * FROM queryinsights.long_running_queries;

--------------------------------------------------------------------------------------





