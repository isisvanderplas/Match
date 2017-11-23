class TeamMembersController < ApplicationController
  before_action :set_team_members
  before_action :authenticate_user!

   def index
     @user = current_user
     @current_team = get_current_team(@user)
     @team_member = get_team_member(@current_team)
   end

   def show; end

#    def new
#      @room = current_user.rooms.build
#    end
#
#    def create
#      @room = current_user.rooms.build(room_params)
#
#      if @room.save
#        redirect_to @room, notice: "Room created"
#      else
#        render :new
#      end
#    end
#
#    def edit; end
#
#    def update
#      if @room.update(room_params)
#        redirect_to @room, notice: "Room updated"
#      else
#        render :edit
#      end
#    end
#
#
#

  private

  def get_current_team(user)
      @teams.each do |team|
        if team.include?(user)
          current_team = team
        end
      end
      return current_team
    end

  def get_team_member(team)
      if team[0] == @user
        teammember = team[1]
      elsif current_team[1]  == @user
        teammember = team[0]
      end
      return teammember
    end


  def set_team_members

  end

  def team_member_params

  end
end



  def show
   @user = current_user
   @current_user_pair = get_current_user_pair(@user)
  end
