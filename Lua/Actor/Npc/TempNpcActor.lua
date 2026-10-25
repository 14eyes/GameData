require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local TempNpcActor = class("TempNpcActor", NpcActorProxy)
TempNpcActor.defaultAlias = actorMgr.tempDefaultAlias
return TempNpcActor
