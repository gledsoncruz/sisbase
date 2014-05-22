json.array!(@poligonos) do |poligono|
  json.extract! poligono, :id, :descricao, :obs, :the_geom
  json.url poligono_url(poligono, format: :json)
end
