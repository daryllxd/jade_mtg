class CardDecorator < Draper::Decorator
  delegate_all

  def icon_class
    html_string = ""

    if object.colors.include? 'Blue'
      html_string << '<i class="mi mi-u mi-mana"></i>'
    end

    if object.colors.include? 'Black'
      html_string << '<i class="mi mi-b mi-mana"></i>'
    end

    if object.colors.include? 'Red'
      html_string << '<i class="mi mi-r mi-mana"></i>'
    end

    if object.colors.include? 'Green'
      html_string << '<i class="mi mi-g mi-mana"></i>'
    end


    if object.colors.include? 'White'
      html_string << '<i class="mi mi-w mi-mana"></i>'
    end

    return html_string.html_safe
  end
end
