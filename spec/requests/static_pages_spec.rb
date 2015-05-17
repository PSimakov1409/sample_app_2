require 'spec_helper'

describe "Static pages" do
  subject { page }
  #функцию let которая создает переменную соответствующую ее аргументу
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  # Описываем Home страницу
  describe "Home page" do
    before { visit root_path }
    # При посещении Home страницы по адресу /static_pages/home, 
    # контент должен содержать слова “Sample App”
    it { should have_content('Sample App') }
    # Описание ожидания того, что данная страница должна 
    # содержать правильный контент.
    it { should have_title(full_title('')) }
    # Проверяет, что внутри тега title содержится "Ruby on Rails Tutorial Sample App | Home"
    # "#{base_title}" = Ruby on Rails Tutorial Sample App
    it { should_not have_title('| Home') }
  end
  
  # Описываем Help страницу
  describe "Help page" do
    before { visit help_path }
    
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end
  #Описываем About страницу
  describe "About page" do
    before { visit about_path }
    
    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
  #Описываем Contact страницу
  describe "Contact page" do
    before { visit contact_path }
    
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end