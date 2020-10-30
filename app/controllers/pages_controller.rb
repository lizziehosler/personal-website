class PagesController < ApplicationController

    def show
      render template: "pages/#{params[:page]}"
    end
    def download 
      send_file Rails.root.join('public', 'Elizabeth_Hosler_Resume.pdf'), 
      :type=>"application/pdf", 
      :x_sendfile=>true
    end
    
end