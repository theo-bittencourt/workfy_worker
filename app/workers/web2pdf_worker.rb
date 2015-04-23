class Web2PdfWorker
  include Sidekiq::Worker

  def perform(content_url, callback_endpoint)
    Rails.logger.info "Performing web2pdf for #{content_url}"
    pdf_file_path = "#{Rails.root}/tmp/web2pdf_#{SecureRandom.base64(8).tr('+/=lIO0', 'pqrsxyz')}.pdf"
    pdf_file = PDFKit.new(content_url).to_file(pdf_file_path)
    HTTMultiParty.post(callback_endpoint, query: {pdf_file: pdf_file})
  end
end
