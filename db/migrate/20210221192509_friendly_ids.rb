class FriendlyIds < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :slug, :string
    add_column :categories, :slug, :string
    add_column :ingredients, :slug, :string

    add_index :recipes, :slug, unique: true
    add_index :categories, :slug, unique: true
    add_index :ingredients, :slug, unique: true

    entities = [Recipe, Ingredient, Category]

    entities.each do |e|
      e.all.each do |a|
        a.with_lock do
          a.slug = nil if a.slug == ""
          begin
            a.save! if a.slug.nil?
          rescue StandardError => e
            # @log.send(:info, "#{a.class.name}: #{a.name} -- #{e.message}")
            next
          end
        end
      end
    end
  end
end
