class JobController < ApplicationController
  # before_action :authenticate_user!
  def index
  	@jobs = Job.order(posted: :desc) 
  end

  def show
    require 'nokogiri'
    require 'open-uri'

    @job = Job.find(params[:id])
    

    html_data = open("#{@job.link}").read
    nokogiri_object = Nokogiri::HTML(html_data)
    @tagcloud_elements = nokogiri_object.css("body>div.content>div.content_col2>div.emplois>div.section_content>p")

      
  end
  def like
    @job = Job.find(params[:id])
    current_user.like!(@job)
    redirect_to :back , :notice => "You have liked #{@job.description}"

  end
  def dislike
    @job = Job.find(params[:id])
    current_user.unlike!(@job)
    redirect_to :back , :notice => "You have disliked #{@job.description}"

  end

end
