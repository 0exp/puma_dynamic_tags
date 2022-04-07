# frozen_string_literal: true

Puma::Plugin.create { require_relative 'dynamic_tags/puma_patches' }
