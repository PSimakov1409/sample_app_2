require 'spec_helper'

describe "Static pages" do
  # Описываем Home страницу
  describe "Home page" do
    # При посещении Home страницы по адресу /static_pages/home, 
    # контент должен содержать слова “Sample App”
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      # Описание ожидания того, что данная страница должна 
      # содержать правильный контент.
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      # Проверяет, что внутри тега title содержится "Ruby on Rails Tutorial Sample App | Home"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  # Описываем Help страницу
  describe "Help page" do
    it "should have yhe content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  #Описываем About страницу
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end