
require 'rails_helper'
require 'support/utilities'

#RSpec.describe "StaticPages", :type => :request do
 # describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
   #   get static_pages_index_path
    #  expect(response).to have_http_status(200)
    #end
  #end
#end


describe "Static pages" do 

	subject {page}#pageがテストの主題であることを伝える
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	
	describe "Home pages" do
		before { visit root_path }
		it { should have_content('Sample App')}
		it { should have_title(full_title(''))}
		it { should_not have_title('|Home') }#このように書いてもいい。すっきりする。
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit help_path
			expect(page).to have_content('Help')
		end
		it "should have the right title" do
			visit help_path
			expect(page).to have_title("#{base_title} | Help")
		end

	end

	describe "About page" do
		it "should have the content 'About us'" do
			visit about_path
			expect(page).to have_content('About Us')
		end
		it "should have the right title" do
			visit about_path
			expect(page).to have_title("#{base_title} | About Us")
		end
	end

	describe "Contact page" do
		it "should have the content 'Contact'" do
			visit contact_path
			expect(page).to have_content('Contact')
		end
		it "should have the right title" do
			visit contact_path
			expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
		end
	end

end 