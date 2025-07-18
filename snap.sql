-- Finds usernames of users who have logged in since 2024-01-01 using the last_login_date index.
SELECT username FROM users WHERE last_login_date BETWEEN "2024-01-01" AND "2025-01-01";

-- Finds the expiration date of the message with ID 151 using the primary key index on messages.
SELECT expires_timestamp FROM messages WHERE id = 151;

-- Finds the top 3 users creativewisdom377 messages most often, ordered by message count, using the from_user_id index.
SELECT to_user_id FROM messages
WHERE from_user_id = (
    SELECT id FROM users
    WHERE username = "creativewisdom377"
)
GROUP BY to_user_id
ORDER BY COUNT(from_user_id) DESC
LIMIT 3 ;

-- Finds the username of the most messaged (most popular) user using the to_user_id index.
SELECT username
FROM users
WHERE id = (
    SELECT to_user_id
    FROM messages
    GROUP BY to_user_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- Finds mutual friends (user IDs) between two users using the primary key index on the friends table.
SELECT friend_id FROM friends
WHERE friend_id IN (
    SELECT friend_id FROM friends
    WHERE user_id = (
        SELECT id FROM users
        WHERE username = 'lovelytrust487'
    )
    INTERSECT
    SELECT friend_id FROM friends
    WHERE user_id = (
        SELECT id FROM users
        WHERE username = 'exceptionalinspiration482'
    ));

