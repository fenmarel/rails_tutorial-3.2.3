require 'spec_helper' 

describe "Static pages" do
	describe "Home page" do
		it "should have the content 'Sample App'" do 
			visit root_path
			page.should have_content('Sample App')
		end 

		it "should have the correct title" do
			visit root_path
			page.should have_selector('title', text: "Rails Tutorial")
			page.should_not have_selector('title', text: "| Home")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do 
			visit help_path
			page.should have_content('Help')
		end
		
		it "should have the correct title" do
			visit help_path
			page.should have_selector('title', text: "Rails Tutorial | Help")
		end
	end

	describe "About page" do 
		it "should have content 'About'" do 
			visit about_path
			page.should have_content('About')
		end
		
		it "should have the correct title" do
			visit about_path
			page.should have_selector('title', text: "Rails Tutorial | About")
		end
	end

	describe "Contact page" do
		it "should have the content 'Contact'" do 
			visit contact_path
			page.should have_content('Contact')
		end
		
		it "should have the correct title" do
			visit contact_path
			page.should have_selector('title', text: "Rails Tutorial | Contact")
		end
	end
end