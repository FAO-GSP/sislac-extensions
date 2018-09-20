require 'sislac/engine'

module Sislac
  # List of ISO 3166-1 alpha-3 country codes accepted by the application
  mattr_accessor :default_country_codes
  @@default_country_codes = %w{
    ABW AIA ARG ATG BES BHS BLM BLZ BMU BOL BRA BRB CHL COL CRI CUB CUW CYM DMA
    DOM ECU FLK GLP GRD GTM GUF GUY HND HTI JAM KNA LCA MAF MEX MSR MTQ NIC PAN
    PER PRI PRY SGS SLV SUR SXM TCA TTO UMI URY VCT VEN VGB VIR XCL
    ANT
  }

  # Default map center and zoom level
  mattr_accessor :map_center, :map_zoom
  @@map_center = [-5, -66]
  @@map_zoom = 3
end
