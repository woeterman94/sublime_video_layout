module SiteToken

  class << self
    TOKENS = {
      www:    'ibvjcopp',
      badged: 't0cf1489',
      my:     'mtrrhukx',
      docs:   'z2g631ff',
      test:   'mtf8cxlm'
    }

    def [](name)
      TOKENS[name]
    end
  end

end