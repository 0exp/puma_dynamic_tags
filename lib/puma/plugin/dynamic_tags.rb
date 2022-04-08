# frozen_string_literal: true

Puma::Plugin.create do
  require_relative 'dynamic_tags/puma_patches'
  require_relative 'dynamic_tags/version'
end
