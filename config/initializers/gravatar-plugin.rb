require 'gravatar-plugin/gravatar'
ActionView::Base.send :include, GravatarHelper::PublicMethods
