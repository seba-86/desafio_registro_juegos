class Rule < ApplicationRecord
    belongs_to :game
    has_one_attached :document_pdf

    # Se crea una validacion customizada
    validate :correct_document_mime_type

    private

  def correct_document_mime_type
    if document_pdf.attached? && !document_pdf.content_type.in?(%w(application/msword application/pdf))
      errors.add(:document_pdf, 'Must be a PDF or a DOC file')
    end
  end
end
