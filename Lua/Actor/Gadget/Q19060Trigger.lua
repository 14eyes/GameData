require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19060Trigger = class("Q19060Trigger", GadgetActorProxy)
Q19060Trigger.defaultAlias = "Q19060Trigger"
local Q19060ClientConfig = require("Quest/Client/Q19060ClientConfig")

local subIDs = Q19060ClientConfig.SubIDs
local npcs = Q19060ClientConfig.Npcs
local datas = Q19060ClientConfig.Datas

function Q19060Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19060Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19060Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19060"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19060")
        actor:CreateQuestNpcById(1906002, npcs.Coop_GorouData.id, 0)
        actor:RequestCoopInteractionFromSubStartPoint(105901, 1906002)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19060Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19060Trigger
