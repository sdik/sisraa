json.extract! relatorio, :id, :data, :departamento_id, :setor_id, :anomalia, :descricao, :acao, :grupodeanalise, :created_at, :updated_at
json.url relatorio_url(relatorio, format: :json)