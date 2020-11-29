class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :salary, :languages, :total_salary
end
