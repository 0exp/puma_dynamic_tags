# frozen_string_literal: true

module Puma::Plugin::DuynamicTags
  module LauncherOptionsInteceptor
    def [](key)
      return super unless key == :tag

      tag_option = super
      tag_option = tag_opt.call.to_s if tag_opt.is_a?(::Proc)
      tag_option
    end
  end

  module DSLTagExtension
    def tag(string = nil, &block)
      @options[:tag] = block_given? ? block : string.to_s
    end
  end
end

Puma::Launcher.prepend(Module.new do
  def options
    unless @options.singleton_class.include?(Puma::Plugin::DuynamicTags::LauncherOptionsInteceptor)
      @options.singleton_class.prepend(Puma::Plugin::DuynamicTags::LauncherOptionsInteceptor)
    end

    @options
  end
end)

Puma::DSL.prepend(Puma::Plugin::DuynamicTags::DSLTagExtension)
