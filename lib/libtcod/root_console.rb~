module TCOD
  class RootConsole < Console
    def initialize(width, height)
      @width = width
      @height = height
      @ptr = nil

      ObjectSpace.define_finalizer(self, proc { TCOD.console_delete(ptr) })
    end
  end
end
