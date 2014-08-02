class Sound
  include Singleton

  LIBRARY = {
    beep: G::Sample.new(Game.instance, "media/Beep.wav")
  }

  def play(sound)
    LIBRARY[sound].play
  end
end
