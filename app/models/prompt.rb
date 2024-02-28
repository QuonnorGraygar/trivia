class Prompt < ApplicationRecord
	validates :title, presence: true
	validates :question, presence: true
	validates :answer, presence: true
	validates :value, presence: true
end
