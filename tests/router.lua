local suite = require('suite')
local router = require('router')

function TestRouter(t)
  t:Log('Test Router')

  local router = router.new()

  router:match('GET', '/hello/:name', function(p)
    assert(p.name == 'me')
  end)

  router:execute('GET', '/hello/me')
end
