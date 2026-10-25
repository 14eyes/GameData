require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Soldier = class("Soldier", NpcActorProxy)
Soldier.defaultAlias = "Soldier"

function Soldier:Start()
    print("start!Soldier")
end

function Soldier:OnDestroy()
    print("Soldier " .. SoldierData.SoldierID .. " destroied")
end

return Soldier
