require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      hero1 = SuperHero.new(params[:member1_name],params[:member1_power],params[:member1_bio])
      hero2 = SuperHero.new(params[:member2_name],params[:member2_power],params[:member2_bio])
      hero3 = SuperHero.new(params[:member3_name],params[:member3_power],params[:member3_bio])
      @team.addMembers(hero1,hero2,hero3)
      erb :team
    end


end
