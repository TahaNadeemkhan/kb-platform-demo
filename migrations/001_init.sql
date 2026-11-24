CREATE TABLE reports (
  id uuid PRIMARY KEY,
  account_id uuid NOT NULL,
  sender text NOT NULL,
  subject text NOT NULL,
  body text,
  received_at timestamptz NOT NULL,
  verdict text CHECK (verdict IN ('phish', 'spam', 'legit'))
);

CREATE TABLE cases (
  id uuid PRIMARY KEY,
  account_id uuid NOT NULL,
  case_number integer NOT NULL,
  status text NOT NULL CHECK (status IN ('open', 'processing', 'closed')),
  updated_at timestamptz NOT NULL
);

CREATE TABLE removal_jobs (
  id uuid PRIMARY KEY,
  case_id uuid NOT NULL REFERENCES cases (id),
  mailbox text NOT NULL,
  state text NOT NULL CHECK (state IN ('queued', 'done', 'failed'))
);
