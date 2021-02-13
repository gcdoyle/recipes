# frozen_string_literal: true

namespace :sync do
  desc "sync ingredients"
  task :ingredients, [:path] => :environment do |t, args|
    args.with_defaults(path: nil)
    SyncService::Ingredients.call(ingredients_url: args[:path])
  end
end
