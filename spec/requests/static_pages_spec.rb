require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'TODO'" do
      visit '/static_pages/home'
      expect(page).to have_content('TODO')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom title '| Home'" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do

    it "should have the content 'TODO'" do
      visit '/static_pages/help'
      expect(page).to have_content('TODO')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do

    it "should have the content 'TODO'" do
      visit '/static_pages/about'
      expect(page).to have_content('TODO')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("About Us")
    end
  end
end
