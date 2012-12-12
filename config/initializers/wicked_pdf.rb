if Rails.env.production?
  WickedPdf.config = {:exe_path => Rails.root.join('lib', 'wkhtmltopdf-amd64').to_s}
else
  WickedPdf.config = {:exe_path => 'C:\htmltopdf\wkhtmltopdf\wkhtmltopdf.exe'}
end

     

  
