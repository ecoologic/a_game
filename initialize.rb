require 'gosu'
require 'pry'
require 'singleton'

G = Gosu

require_relative 'settings'
require_relative 'z_order'
require_relative 'window'
require_relative 'game'
require_relative 'collision_detector'

require_relative 'space'
require_relative 'element'
require_relative 'spaceship'
require_relative 'player'
require_relative 'star'



Game.instance
