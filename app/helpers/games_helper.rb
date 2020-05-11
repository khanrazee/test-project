# frozen_string_literal: true

module GamesHelper
  def game_image_urls
    @game.images.map { |image| url_for(image) }
  end
end
