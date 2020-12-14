class PagesController < ApplicationController
	def about
		@title = 'About us';
		@content = 'This is the first blog page';
	end

end
