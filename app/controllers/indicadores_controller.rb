require 'rest-client'
require 'json'


class IndicadoresController < ApplicationController
  def index
    url = "https://mindicador.cl/api/uf"
    RestClient.get(url) { | response, request, result |
      if response.code == 200
        resultado = JSON.parse(response)
        datos =  resultado["serie"]
        datos.each {| item |
          indicadores = Indicador.new(fecha: item["fecha"], valor: item["valor"])
          indicadores.save
        }
      end
    }
    @indicadores = Indicador.limit(30).order('fecha desc')
  end

  def show
    @indicador = Indicador.find(params[:id])
  end
end
