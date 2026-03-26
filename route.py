from aiohttp import web

routes = web.RouteTableDef()

@routes.get("/", allow_head=True)
async def root_route_handler(request):
    return web.json_response("Madflix_Bots")


async def web_server():
    web_app = web.Application(client_max_size=30000000)
    web_app.add_routes(routes)
    return web_app



#Don't Remove Credits
#Ask Doubt @AU_Bot_Discussion 
#Telegram Channel @Anime_UpdatesAU 
#Owner @Mr_Mohammed_29
