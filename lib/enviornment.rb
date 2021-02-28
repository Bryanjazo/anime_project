require "open-uri"
require "pry"
require "json"
require 'net/http'
require "dotenv/load"
require "tty-prompt"
require "colorize"
require 'colorized_string'

require_relative "anime/version"
require_relative "../lib/api"
require_relative "../lib/anime"
require_relative "../lib/cli"
