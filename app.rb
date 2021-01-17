require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do 
    @first_num = params[:num1]
    @sec_numb = params[:num2]
    @final_numb = @first_num.to_i * @sec_numb.to_i
    "#{@final_numb}"
  end 

  # Code your final two routes here:

end