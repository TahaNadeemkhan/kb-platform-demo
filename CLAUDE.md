# MailGuard platform (demo)

Every change to code, schema or business rules must update this file or `docs/` in the same pull
request.

## Modules

- `src/retention.py`: how long report data is kept.
- `src/case_status.py`: case states and when a case counts as stuck.
- `migrations/`: the Postgres schema, one file per change.

## Data model

See `docs/data-model.md`. Tables: `reports`, `cases`, `removal_jobs`, `quarantine_items`.

## Business rules

- Report bodies are deleted 14 days after the report (`docs/retention.md`).
- A case is stuck when it has been `processing` for more than 1 hour.
- A case closes on its own after 30 days with no activity.
