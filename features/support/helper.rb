module Helper
    
    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "reports/screenshot/"
        dataHora = DateTime.now.to_s
        dataHora.split(':')
        data = dataHora[0..12].to_s+dataHora[14..15].to_s+dataHora[17..21].to_s
        foto = "#{caminho_arquivo}#{data}#{nome_arquivo}-#{resultado}.png"
        temp_shot = page.save_screenshot(foto)
        shot = Base64.encode64(File.open(temp_shot, "rb").read)
        attach(shot, 'image/png')
    end

end