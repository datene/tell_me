class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :find_story, only: [:show, :edit, :update, :destroy]

  def index
    @stories = Story.all
  end

  def show
  end

  def new
    @story = Story.new
    generate_trope
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_story
    @story = Story.find(params[:id])
  end

  def story_parameters
    require(:story).permit(:title, :description, :content, :trope_title, :trope_desciption, :trope_url)
  end

  def generate_trope
    @tropes = []
    scrape = Scrape.new
    3.times do 
      result_hash = scrape.generate
      result_hash[:story] = @story
      @tropes << Trope.new(result_hash)
    end
  end
end
