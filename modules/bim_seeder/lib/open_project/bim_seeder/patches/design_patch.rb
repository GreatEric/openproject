require 'open_project/custom_styles/design'

module OpenProject::BimSeeder
  module Patches
    module DesignPatch
      DEFAULTS = OpenProject::CustomStyles::Design::DEFAULTS.merge(
        {
          'primary-color'                                        => "#3270DB",
          'primary-color-dark'                                   => "#163473",
          'alternative-color'                                    => "#349939",
          'header-bg-color'                                      => "#05002C",
          'header-item-bg-hover-color'                           => "#163473",
          'content-link-color'                                   => "#275BB5",
          'main-menu-bg-color'                                   => "#0E2045",
          'main-menu-bg-selected-background'                     => "#3270DB",
          'main-menu-bg-hover-background'                        => "#163473",
          'header-home-link-bg'                                  => '#{image-url("bim_seeder/logo_openproject_bim_big.png") no-repeat 20px 0}',
          'new-feature-teaser-image'                             => '#{image-url("bim_seeder/new_feature_teaser.jpg")}'
        }
      ).freeze
    end
  end
end

OpenProject::CustomStyles::Design.send(:remove_const, 'DEFAULTS')
OpenProject::CustomStyles::Design.const_set('DEFAULTS', OpenProject::BimSeeder::Patches::DesignPatch::DEFAULTS)
