require 'spec_helper'

describe "StaticPages" do 

	describe 'Home page' do
		it "should have the content 'Smooth Chair'" do
			visit '/static_pages/home'
			expect(page).to have_content('Smooth Chair')
		end
	end

	describe 'About Page' do
		it "should have the conten 'About Page' " do
			visit '/static_pages/about'
			expect(page).to have_content('About Page')
		end
	end
end

