import time

message = 'No data available in table'


def get_current_time_as_string():
    localtime = time.localtime()
    formatted_time = time.strftime("%Y%m%d%H%M%S", localtime)
    return formatted_time


def assertUserExist(self):
    if not self._page_contains(message):
        raise AssertionError(
            f"Page should have contained text '{message}' but did not."
        )
    else:
        pass
