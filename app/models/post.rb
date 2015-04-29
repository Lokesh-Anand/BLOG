class Post < ActiveRecord::Base
 belongs_to :user
 attr_accessible:email
has_attached_file :image, :styles => { :medium => "480x360>", :thumb => "100x100>" }
  validates_attachment_presence :image
  #validates_attachment_size :image, :less_than => 5.megabytes
  #validates_attachment_content_type :image, :content_type => ['image/jpeg','image/png']
attr_accessible:title,:body,:image,:body
has_many:comments
end

