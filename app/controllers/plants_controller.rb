class PlantsController < InheritedResources::Base
  before_action :set_plant, only: [:show, :edit, :update, :destroy, :water]
  before_action :set_user
  def index
    if current_user
      @plants = @user.plants
    else
      redirect_to root_path
    end
  end

  def new
    @plant = Plant.new()
  end

  def edit
  end

  def create
    @plant = Plant.new(plant_params.merge(user_id: @user.id))
    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'Neuer Pal erstellt' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    if !current_user
      redirect_to root_path, notice: 'Bitte logge dich ein um deine Pals zu sehen 🌷🌸🌺🌻'
    else
      if current_user.id != Plant.find(params[:id]).user_id
        redirect_to plants_path, notice: 'Hey, diese schöne Pflanze gehört jemand anderem 😜'
      else
        if @plant.image.attached?
          @plant_image = polymorphic_url @plant.image
        else
          @plant_image = '/assets/default.jpg'
        end
      end
    end
  end

  def update
    respond_to do |format|
      @plant.update(plant_params)
        puts 'success'
        format.html { redirect_to @plant, notice: 'Der Zustand deines Pals hat sich geändert' }
        format.html { render :edit }
    end
  end

  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'Oh nein, deine Pflanze ist leider verdorben!' }
    end
  end

  def water
    respond_to do |format|
      if @plant.waterCurrent == @plant.waterNeed
        format.html { redirect_to plant_path(@plant), notice: 'Dein Pal ist derzeit nicht durstig' }
      else
        @plant.waterCurrent = @plant.waterNeed
        @plant.love = 10
        @plant.save
        format.html { redirect_to plant_path(@plant), notice: 'Dein Pal ist wieder fit' }
      end
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:realName, :nickName, :waterNeed, :waterCurrent, :sunNeed, :place, :love, :image)
  end

  def set_user
    @user = current_user
  end

  def set_plant
    @plant = current_user.plants.find(params[:id])
  end
end
