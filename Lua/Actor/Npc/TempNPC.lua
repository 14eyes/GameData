require("Actor/ActorCommon")
local ConfigNpcActorProxy = require("Actor/Npc/ConfigNpcActorProxy")

local TempNPC = class("TempNPC", ConfigNpcActorProxy)
TempNPC.defaultAlias = "TempNPC"
return TempNPC
