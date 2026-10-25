require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12039Trigger7 = class("Q12039Trigger7", GadgetActorProxy)
Q12039Trigger7.defaultAlias = "Q12039Trigger7"
local Q12039ClientConfig = require("Quest/Client/Q12039ClientConfig")

local subIDs = Q12039ClientConfig.SubIDs
local npcs = Q12039ClientConfig.Npcs

function Q12039Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12039Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 30, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12039Trigger7:TriggerIn()
    print("TriggerIn")
    local questNpcActor = actorMgr:GetActor("12039"):GetQuestNpcActor(npcs.Npc12589Data.alias)
    questNpcActor:UnSpawnAttach("Kazuha3_Offset_WeaponR")
    questNpcActor:SpawnAttach("Kazuha3_Offset_WeaponR")
    self:DestroySelf()
end

function Q12039Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q12039Trigger7
