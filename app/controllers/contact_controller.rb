class ContactController < ApplicationController

	def index
		@contacts = Contact.all
		if @contacts.empty?
			flash[:error] = "Threre are no contacts to view, create new contact to proceed"
		end
		
	end

	# def create
		
	# end

	def new
		@contact = Contact.new
	end

	# def edit
		
	# end

	# def show
		
	# end

	# def update
		
	# end

	# def destroy
		
	# end
end
