require 'typo_sliding_posts'
 
ActionController::Base.send :include, TypoSlidingPosts
ActionController::Base.send :helper, TypoSlidingPostsHelper