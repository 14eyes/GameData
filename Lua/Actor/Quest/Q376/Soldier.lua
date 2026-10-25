require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Soldier = class("Soldier", NpcActorProxy)
Soldier.defaultAlias = "Soldier"
return Soldier
