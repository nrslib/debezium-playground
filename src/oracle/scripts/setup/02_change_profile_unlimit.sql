show con_name
select username from user_users;

alter profile default limit PASSWORD_LIFE_TIME UNLIMITED;

alter profile default limit FAILED_LOGIN_ATTEMPTS UNLIMITED;
alter profile default limit PASSWORD_LOCK_TIME UNLIMITED;
alter profile default limit PASSWORD_GRACE_TIME UNLIMITED;