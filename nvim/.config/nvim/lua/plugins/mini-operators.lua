return {
  {
    'echasnovski/mini.operators', version = '*',
    -- keys = { 't', nil, mode = {'n', 'v', 'x'} },  -- wait for 't' (multiply) input to lazy load
    enabled = true,
    opts = {
      multiply = { prefix = 't' },
      -- I only want the 'multiply' feature, so disable the rest
      evaluate = { prefix = '' },
      exchange = { prefix = '' },
      replace = { prefix = '' },
      sort = { prefix = '' },
    }
  },
}
