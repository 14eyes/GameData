require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Soldier = class("Soldier", NpcActorProxy)
Soldier.defaultAlias = "Soldier"
function Soldier:OnPostDataPrepare() end
function Soldier:Start() end
function Soldier:OnDestroy() end
return Soldier
