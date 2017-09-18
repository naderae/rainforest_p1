class AddAssociationsToReviewTable < ActiveRecord::Migration[5.1]
  def change
    change_table :reviews do |t|
      t.belongs_to :product
    end
  end
end
