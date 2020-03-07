class CreatePodcastNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :podcast_notes do |t|
      t.string :title

      t.timestamps
    end
  end
end
