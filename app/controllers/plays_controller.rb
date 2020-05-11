# frozen_string_literal: true

class PlaysController < ApplicationController
  def create
    @play = Play.create!(tick: params[:tick],
                         image_url: params[:image_url])

    render partial: 'plays/play_row', locals: { play: @play }, status: 200
  end
end
