require 'hpricot'
module TypoSlidingPosts
  
end
  
module TypoSlidingPostsHelper
  def render_carousel(articles)
    i = 0
    carousel = '<div id="carousel">'
    carousel << '<a href="#" class="carousel-control" id="carousel-previous" rel="prev"><img src="/images/theme/fleche1.png" alt="Article précédent" /></a>'
    carousel << '<a href="#" class="carousel-control" id="carousel-next" rel="next"><img src="/images/theme/fleche2.png" alt="Article suivant" /></a>'
    carousel << '<div id="carousel-wrapper">'
    carousel << '<div id="carousel-content">'
    articles.each do |article|
      doc = Hpricot(article.body)
      (doc/"img[@class='carousel']").each do |img|
        i = 1
        carousel << "<div class='slide' style='background: url(#{img.attributes['src']});'>"
        carousel << "<p class='carousel-overlay'>"
        carousel << link_to_permalink(article, "#{article.title}<br /><small>#{article.body.strip_html.slice(0, 300)}")
        carousel << "</small></p>"
        carousel << '</div>'
      end
    end

    carousel << '</div>'  
    carousel << '</div>'
    carousel << '</div>'
    carousel << '<script type="text/javascript">'
    carousel << "new Carousel('carousel-wrapper', $$('#carousel-content .slide'), $$('a.carousel-control', 'a.carousel-jumper'), {duration: 0.4, circular: false});"
    carousel << '</script>'
    return carousel unless i == 0
  end

  
end