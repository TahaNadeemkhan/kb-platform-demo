# Data model

| Table | Column | Meaning |
| --- | --- | --- |
| `reports` | `id`, `account_id` | One reported message, owned by one customer account |
| `reports` | `sender`, `subject`, `received_at` | Taken from the reported mail |
| `reports` | `verdict` | `phish`, `spam` or `legit`, set by the scorer |
| `cases` | `id`, `account_id`, `case_number` | Reports of the same message, grouped |
| `cases` | `status` | `open`, `processing` or `closed` |
| `cases` | `updated_at` | Last activity on the case |
| `removal_jobs` | `case_id`, `mailbox`, `state` | One job per mailbox: `queued`, `done` or `failed` |
