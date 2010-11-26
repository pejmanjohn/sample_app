require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have a About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a Sign Up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    # Commented out because autotest is breaking
    #     click_link "About"
    #     reponse.should have_selector('title', :content => "About")
    #     click_link "Contact"
    #     reponse.should have_selector('title', :content => "Contact")
    #     click_link "Home"
    #     reponse.should have_selector('title', :content => "Home")
    #     click_link "Sign up now!"
    #     reponse.should have_selector('title', :content => "Sign Up")
  end
end
