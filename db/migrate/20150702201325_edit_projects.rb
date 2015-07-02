class EditProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :skill_id
  end
end
