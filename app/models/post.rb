class Post < ActiveRecord::Base
  list_columns :title, :created_at, :updated_at
  admin_fieldset do |f|
    f.text_field :title
    f.html_area :body
    f.static_text :created_at
    f.static_text :updated_at
  end                

  def to_label
     self.title
  end

end
