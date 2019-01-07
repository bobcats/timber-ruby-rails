require 'timber/config/integrations/action_view'
require 'timber/config/integrations/active_record'
require 'timber/config/integrations/action_controller'
require 'timber/config/integrations/rack'

Timber::Config.instance.define_singleton_method(:logrageify!) do
  integrations.action_controller.silence = true
  integrations.action_view.silence = true
  integrations.active_record.silence = true
  integrations.rack.http_events.collapse_into_single_event = true
end
