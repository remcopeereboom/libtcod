module TCOD
  class RootConsole < Console
    def initialize
      @width = System.window_width
      @height = System.window_height
      @ptr = nil

      ObjectSpace.define_finalizer(self, proc { TCOD.console_delete(ptr) })
    end
  end
end
