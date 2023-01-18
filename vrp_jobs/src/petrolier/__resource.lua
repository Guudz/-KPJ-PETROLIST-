ui_page {
    'src/petrolier/html/index.html'
}
files {
    'html/*.*'
}

shared_script 'config.lua'

client_scripts {
    "@vrp/client/Tunnel.lua",
    "@vrp/client/Proxy.lua",
    "src/petrolier/client/client.lua",



 

 
}
  
server_scripts{ 
    "@vrp/lib/utils.lua",
   "server/server.lua",

  
}
