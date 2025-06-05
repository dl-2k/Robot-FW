from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager

class DriverManager:
    
    def __init__(self, browser="chrome"):
        self.browser = browser.lower()

    def get_driver(self):
        if self.browser == "chrome":
            driver = webdriver.Chrome(ChromeDriverManager().install())
        elif self.browser == "firefox":
            driver = webdriver.Firefox(executable_path=GeckoDriverManager().install())
        else:
            raise Exception(f"Browser '{self.browser}' is not supported.")
        driver.maximize_window()
        return driver

    def quit_driver(self, driver):
        driver.quit()
