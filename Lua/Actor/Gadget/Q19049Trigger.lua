require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19049Trigger = class("Q19049Trigger", GadgetActorProxy)
Q19049Trigger.defaultAlias = "Q19049Trigger"
local Q19049ClientConfig = require("Quest/Client/Q19049ClientConfig")

local subIDs = Q19049ClientConfig.SubIDs
local npcs = Q19049ClientConfig.Npcs

function Q19049Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19049Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19049Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19049"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19049")
        actor:CreateQuestNpcById(1904903, npcs.Coop_GorouData.id, 0)
        actor:RequestCoopInteractionFromSubStartPoint(105901, 1904903)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19049Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19049Trigger
