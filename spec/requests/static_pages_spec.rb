require 'spec_helper'

describe "Static pages" do
  #функцию let которая создает переменную соответствующую ее аргументу
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
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
    it "should have the base title" do
      visit '/static_pages/home'
      # Проверяет, что внутри тега title содержится "Ruby on Rails Tutorial Sample App | Home"
      # "#{base_title}" = Ruby on Rails Tutorial Sample App
      expect(page).to have_title("#{base_title}")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
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
      expect(page).to have_title("#{base_title} | Help")
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
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  #Описываем Contact страницу
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end