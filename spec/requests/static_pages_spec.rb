require 'spec_helper'

describe "Static pages" do
  let(:titleOpening) { "Ruby on Rails Tutorial Sample App |"}
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{titleOpening} Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end

    it "should have title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{titleOpening} Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{titleOpening} About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{titleOpening} Contact Us")
    end
  end
end
