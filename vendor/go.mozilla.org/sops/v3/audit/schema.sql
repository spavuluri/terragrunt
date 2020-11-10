CREATE TABLE audit_event (
  id SERIAL PRIMARY KEY,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  action TEXT,
  username TEXT,
  file TEXT
);

CREATE ROLE sops WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN PASSWORD 'sops';

GRANT INSERT ON audit_event TO sops;
GRANT USAGE ON audit_event_id_seq TO sops;
