require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13007Trigger = class("Q13007Trigger", GadgetActorProxy)
Q13007Trigger.defaultAlias = "Q13007Trigger"
local Q13007ClientConfig = require("Quest/Client/Q13007ClientConfig")

local subIDs = Q13007ClientConfig.SubIDs
local npcs = Q13007ClientConfig.Npcs
local datas = Q13007ClientConfig.Datas

function Q13007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13007Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13007"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13007")
        actor:CreateQuestNpcById(1300713, npcs.Npc1054Data.id, 0)
        actor:RequestInteraction(npcs.Npc1054Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q13007Trigger:TriggerOut()
    print("TriggerOut")
end

return Q13007Trigger
