require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19049Trigger3 = class("Q19049Trigger3", GadgetActorProxy)
Q19049Trigger3.defaultAlias = "Q19049Trigger3"
local Q19049ClientConfig = require("Quest/Client/Q19049ClientConfig")

local subIDs = Q19049ClientConfig.SubIDs
local npcs = Q19049ClientConfig.Npcs

function Q19049Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19049Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19049Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19049"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19049")
        actor:CreateQuestNpcById(1904910, npcs.Coop_GorouData.id, 0)
        actor:RequestCoopInteractionFromSubStartPoint(105901, 1904910)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19049Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19049Trigger3
