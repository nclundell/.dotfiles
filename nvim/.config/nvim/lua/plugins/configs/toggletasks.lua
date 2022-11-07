require('toggletasks').setup {
  tasks = {
    {
      name = 'Elastic Search',
      cmd = 'elasticsearch',
      tags = { 'dev' }
    },
    {
      name = 'Rails Server (Dev)',
      cmd = 'bundle exec rails s',
      tags = { 'dev' }
    },
    {
      name = 'Webpacker Dev Server',
      cmd = 'bin/webpack-dev-server',
      tags = { 'dev' }
    },
    {
      name = 'Rails Server (Stage)',
      cmd = 'bundle exec rails s -e staging',
      tags = { 'stage' }
    },
    {
      name = 'Rails Server (Prod)',
      cmd = 'bundle exec rails s -e production',
      tags = { 'prod' }
    }
  },
}
