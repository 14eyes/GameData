require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local RandomNpc = class("RandomNpc", NpcActorProxy)
RandomNpc.defaultAlias = "RandomNpc"
function RandomNpc:Start() end
return RandomNpc
