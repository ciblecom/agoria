WickedPdf.config = {
  #:wkhtmltopdf => '/usr/local/bin/wkhtmltopdf',
  #:layout => "pdf.html",
  
  if Rails.env.production?
    :exe_path => Rails.root.join('lib', 'wkhtmltopdf-amd64').to_s
  else
    :exe_path => 'C:\htmltopdf\wkhtmltopdf\wkhtmltopdf.exe'
  end
  
}