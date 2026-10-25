require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40013CampSealGearTrigger = class("Q40013CampSealGearTrigger", GadgetActorProxy)
Q40013CampSealGearTrigger.defaultAlias = "Q40013CampSealGearTrigger"
local Q40013ClientConfig = require("Quest/Client/Q40013ClientConfig")

local subIDs = Q40013ClientConfig.SubIDs
local npcs = Q40013ClientConfig.Npcs
local datas = Q40013ClientConfig.Datas

function Q40013CampSealGearTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40013CampSealGearTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40013CampSealGearTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40013"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40013")
        actor:CreateQuestNpcById(4001311, npcs.Npc10090Data.id, 1)
        actor:RequestInteraction(npcs.Npc10090Data.alias)
    end, nil, nil, "")

    self:DestroySelf()
end

function Q40013CampSealGearTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40013CampSealGearTrigger
