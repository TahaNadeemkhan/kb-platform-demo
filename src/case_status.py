"""Case states and the stuck rule (demo)."""

from datetime import datetime, timedelta

STUCK_AFTER = timedelta(hours=1)
AUTO_CLOSE_AFTER = timedelta(days=30)


def is_stuck(status: str, updated_at: datetime, now: datetime) -> bool:
    return status == "processing" and now - updated_at > STUCK_AFTER
