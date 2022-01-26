# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.

from selenium import webdriver
from selenium.webdriver.common.by import By
# import pytest

def run():
    test_case = [('admin@example.com', 'testadmin'),('admin@example', 'testadmin'),('', ''), ('admin', 'testadmin')]
    for i in test_case:
        run_login(i[0], i[1])

def run_login(param_email='admin@example.com', param_password='testadmin'):
    url="http://localhost:8081"
    path_driver = "/home/kingnnt/Project/Personal/HotelManagement/tests/drivers/chromedriver_linux64/chromedriver"
    driver = webdriver.Chrome(executable_path=path_driver)
    driver.get(url)

    email = driver.find_element(By.ID, 'email')
    password = driver.find_element(By.ID, 'password')
    btn_login = driver.find_element(By.XPATH, '/html/body/div[1]/main/div/div/div/div/div[2]/form/div[4]/div/button')

    email.send_keys(param_email)
    password.send_keys(param_password)
    btn_login.click()

    correct_url_after_login = 'http://localhost:8081/room'
    expected_rrl = driver.current_url

    try:
        assert correct_url_after_login in expected_rrl
    except:
        print("FALSE WITH email = ", param_email, " password = ", param_password)
    driver.quit()


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    run()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
