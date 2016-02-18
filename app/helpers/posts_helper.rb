module PostsHelper
  def process_bold(text)
    text.gsub(/\[b\](.*)\[\/b\]/, '<i>\1</i>')
  end

  def process_italic(text)
    text.gsub(/\[i\](.*)\[\/i\]/, '<i>\1</i>')
  end

  def process_underline(text)
    text.gsub(/\[u\](.*)\[\/u\]/, '<u>\1</u>')
  end

  def process_striked(text)
    text.gsub(/\[s\](.*)\[\/s\]/, '<s>\1</s>')
  end

  def process_url(text)
    text.gsub(/\[url\](.*)\[\/url\]/, '<a href="\1">\1</a>')
  end

  def process_img(text)
    text.gsub(/\[img\](.*)\[\/img\]/, '<img class="ui image" src="\1" alt="" />')
  end

  def process_quote(text)
    text.gsub(/\[quote\](.*)\[\/quote\]/, '<blockquote><p>\1</p></blockquote>')
  end

  def process_code(text)
    text.gsub(/\[code\](.*)\[\/code\]/, '<pre>\1</pre>')
  end

  def bb(text)
    tags = %w(b i u s a img blockquote p pre)
    text = process_bold text
    text = process_italic text
    text = process_underline text
    text = process_striked text
    text = process_url text
    text = process_img text
    text = process_quote text
    text = process_code text
    sanitize text, tags: tags
  end
end
