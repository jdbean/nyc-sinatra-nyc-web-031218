class CreateFigureTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :figure_titles do |t|
      t.references :figures
      t.references :titles
    end
  end
end
