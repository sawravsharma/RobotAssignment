from SeleniumLibrary.base import LibraryComponent, keyword
from allure_commons.types import AttachmentType
import allure


class FrameKeywords(LibraryComponent):

    def __init__(self, ctx):
        super().__init__(ctx)
        self.allure = None

    @keyword("Taking Screenshots")
    def take_screenshot(self):
        self.driver.get_screenshot_as_base64()
        self.allure.attach(self.take_screenshot.get_screenshot_as_png(), name="Screenshot", attachment_type=AttachmentType.PNG)

