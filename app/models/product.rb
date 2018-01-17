class Product < ApplicationRecord
	belongs_to :category
	mount_uploader :image, ImageUploader
	mount_uploaders :attachments, ImageUploader
	validates :image, file_size: { less_than: 1.megabytes }
end
