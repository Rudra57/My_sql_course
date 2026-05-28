use startersql;
-- SELECT name FROM users
-- UNION
-- SELECT name FROM admin_users;
-- SELECT name FROM users
-- UNION ALL
-- SELECT name FROM admin_users;
-- SELECT name, salary FROM users
-- UNION
-- SELECT name, salary FROM admin_users;
SELECT name FROM users
UNION
SELECT name FROM admin_users
ORDER BY name;