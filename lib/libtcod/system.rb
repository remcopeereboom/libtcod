module TCOD
  module System
    def self.initialize(width, height, options = {})
      title = options.fetch(:title, "")
      fullscreen = options.fetch(:fullscreen, false)
      renderer = options.fetch(:renderer, TCOD::RENDERER_SDL)

      TCOD.console_init_root(width, height, title, fullscreen, renderer)
      @window_width = width
      @window_height = height
      @title = title
    end

    def self.window_width
      @window_width
    end

    def self.window_height
      @window_height
    end

    def self.register_sdl_renderer(&b)
      TCOD.sys_register_SDL_renderer(&b)
    end

    def self.title=(new_title)
      TCOD.sys_set_window_title(new_title)
      @window_title = new_title
    end

    def self.title
      @window_title
    end

    def self.fullscreen=(new_fullscreen)
      TCOD.console_set_fullscreen(new_fullscreen)
    end

    def self.fullscreen?
      TCOD.console_is_fullscreen
    end

    def self.closed?
      TCOD.console_is_window_closed
    end

    def self.set_custom_font(fontFile, flags, nb_char_horiz=0, nb_char_vertic=0)
      TCOD.console_set_custom_font(fontFile, flags, nb_char_horiz, nb_char_vertic)
    end

    def self.map_ascii_code_to_font(asciiCode, fontCharX, fontCharY)
      TCOD.console_map_ascii_code_to_font(asciiCode.ord, fontCharX, fontCharY)
    end

    def self.map_ascii_codes_to_font(asciiCode, nbCodes, fontCharX, fontCharY)
      TCOD.console_map_ascii_codes_to_font(asciiCode.ord, nbCodes, fontCharX, fontCharY)
    end

    def self.flush
      TCOD.console_flush
    end
  end
end
