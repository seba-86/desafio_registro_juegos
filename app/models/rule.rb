class Rule < ApplicationRecord
    belongs_to :game
    has_one_attached :document_pdf
    # validates_attachment :document_pdf, attached: true, content_type: { in: 'application/pdf', message: 'This is not a PDF file' }
end
