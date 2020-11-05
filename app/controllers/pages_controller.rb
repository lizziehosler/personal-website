class PagesController < ApplicationController

    def show
      if valid_page?
        render template: "pages/#{params[:page]}"
      else
        render file: "public/404.html", status: :not_found 
      end
    end

    private
    def valid_page?
      File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
    end

    def download 
      send_file Rails.root.join('public', 'Elizabeth_Hosler_Resume.pdf'), 
      :type=>"application/pdf", 
      :x_sendfile=>true
    end
    
end