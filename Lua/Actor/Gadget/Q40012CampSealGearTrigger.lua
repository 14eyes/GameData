require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40012CampSealGearTrigger = class("Q40012CampSealGearTrigger", GadgetActorProxy)
Q40012CampSealGearTrigger.defaultAlias = "Q40012CampSealGearTrigger"
local Q40012ClientConfig = require("Quest/Client/Q40012ClientConfig")

local subIDs = Q40012ClientConfig.SubIDs
local npcs = Q40012ClientConfig.Npcs
local gadgets = Q40012ClientConfig.Gadgets
local datas = Q40012ClientConfig.Datas

function Q40012CampSealGearTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40012CampSealGearTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40012CampSealGearTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40012"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40012")
        actor:CreateQuestNpcById(4001213, npcs.Npc10090Data.id, 1)
        actor:RequestInteraction(npcs.Npc10090Data.alias)
    end, nil, nil, "")

    self:DestroySelf()
end

function Q40012CampSealGearTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40012CampSealGearTrigger
