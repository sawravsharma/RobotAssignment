import random
import string

userEmailLogin = 'admin@yourstore.com'
userPasswordLogin = 'admin'

EMAIL = ''.join(random.choice(string.ascii_letters) for _ in range(5, 10)) + '@gmail.com'
PASSWORD = ''.join(random.choice(string.ascii_letters) for _ in range(10))
FIRST_NAME = ''.join(random.choice(string.ascii_letters) for _ in range(5, 10))
LAST_NAME = ''.join(random.choice(string.ascii_letters) for _ in range(4, 6))
DATE = '11/10/2021'
message = 'No data available in table'


def takeScreenshot(self):
    Screenshot = self.driver.get_screenshot_as_png()
    return Screenshot


def assertUserExist(self):
    if not self._page_contains(message):
        raise AssertionError(
            f"Page should have contained text '{message}' but did not."
        )
    else:
        pass
