SELECT
    pg_cancel_backend(pid),
    usename,
    datname,
    application_name,
    client_addr,
    client_port,
    state,
    wait_event_type,
    wait_event,
    state_change,
    query
FROM pg_stat_activity
WHERE pid = <replace_with_pid>;
