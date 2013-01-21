require 'spec_helper'

describe "StaticPages" do

	subject { page }

	describe "Home Page" do
  		before { visit root_path }

		it {should have_selector('h1', text: 'Interiors App')}
 	end

	describe "Help page" do
    	before { visit help_path }

		it {should have_selector('h1', text: 'Help')}
	end




end
