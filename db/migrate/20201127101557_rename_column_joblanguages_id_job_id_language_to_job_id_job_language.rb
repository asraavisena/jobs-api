class RenameColumnJoblanguagesIdJobIdLanguageToJobIdJobLanguage < ActiveRecord::Migration[6.0]
  def change
    rename_column :joblanguages, :id_job, :job_id
    rename_column :joblanguages, :id_language, :language_id
  end
end
