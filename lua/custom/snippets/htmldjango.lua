local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_code
local i = ls.insert_node

return {
  s('kk', {
    t '{% block ',
    i(1, 'block_name'),
    t ' %}',
  }),
}
