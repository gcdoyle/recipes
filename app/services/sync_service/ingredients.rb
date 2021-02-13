# frozen_string_literal: true

require "open-uri"
require "logger"

class SyncService::Ingredients

  def self.call(ingredients_url: nil)
    new(ingredients_url: ingredients_url).sync
  end

  def initialize(params = {})
    @ingredientsUrl = params.fetch(:ingredients_url) || Rails.configuration.ingredients_feed_url
    @ingredientsDoc = File.read(@ingredientsUrl)
  end

  def sync
    read_ingredients.each do |e|
      begin
        record = record_hash(e)
        create(record)
      end
    end
  end

  def read_ingredients
    JSON.parse(@ingredientsDoc)["tags"]
  end

  def record_hash(event)
    {
      "name"  => event.fetch("name", nil),
      "url"   => event.fetch("url", nil)
    }
  end

  def create(record_hash)
    ingredient = Ingredient.new
    ingredient.assign_attributes(record_hash)
    ingredient.name = record_hash["name"]
    ingredient.url = record_hash["url"]
    ingredient.save
  end
end
