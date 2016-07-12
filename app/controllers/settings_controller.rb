class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]
  
  # GET /settings
  # GET /settings.json
  def index
    site_color = Setting.find(1)
    session[:color] = site_color.color
    session[:font] = site_color.font
    session[:title] = site_color.title
  end

  def save
    params.except(:controller, :action)
    case 
    when params.keys.include?("color")
      session[:color] = params["color"]
      Setting.find(1).update_attributes(color: params["color"])
    when params.keys.include?("font")
      session[:font] = params["font"]
      Setting.find(1).update_attributes(font: params["font"])
    when params.keys.include?("title")
      session[:title] = params["title"]
      Setting.find(1).update_attributes(title: params["title"])
    end
    render nothing: true
  end
  
end
