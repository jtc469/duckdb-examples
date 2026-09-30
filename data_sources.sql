CREATE OR REPLACE TEMP VIEW transactions AS
SELECT * FROM read_csv('data/transactions.csv');

CREATE OR REPLACE TEMP VIEW users AS
SELECT * FROM read_csv('data/users.csv');

CREATE OR REPLACE TEMP VIEW subscriptions AS
SELECT * FROM read_csv('data/subscriptions.csv');

CREATE OR REPLACE TEMP VIEW app_events AS
SELECT * FROM read_csv('data/app_events.csv');