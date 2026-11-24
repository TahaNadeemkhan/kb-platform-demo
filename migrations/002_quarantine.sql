CREATE TABLE quarantine_items (
  id uuid PRIMARY KEY,
  report_id uuid NOT NULL REFERENCES reports (id),
  held_until timestamptz NOT NULL,
  released_by text
);
