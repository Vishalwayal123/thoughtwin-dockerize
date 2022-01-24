class AccountDetail < ApplicationRecord
	 belongs_to :user
	 mount_uploader :pan_card, DocumentUploader
	 mount_uploader :aadhar_card, DocumentUploader
end
