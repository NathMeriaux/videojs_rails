module VideojsRails
  module ViewHelpers
    def videojs_rails(*options, &blk)
      default_options = {
        controls: true,
        preload: "auto"
      }
      options = default_options.merge(options.extract_options!)
      render partial: 'videojs_rails/videojs_rails', locals: { options: options }, &blk
    end
  end
end
