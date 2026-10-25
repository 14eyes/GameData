require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19036Trigger = class("Q19036Trigger", GadgetActorProxy)
Q19036Trigger.defaultAlias = "Q19036Trigger"
local Q19036ClientConfig = require("Quest/Client/Q19036ClientConfig")

local subIDs = Q19036ClientConfig.SubIDs
local npcs = Q19036ClientConfig.Npcs
local datas = Q19036ClientConfig.Datas

function Q19036Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19036Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19036Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19036"):CallDelay(2, function(arg1)
        actorMgr:GetActor("19036"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            local actor = actorMgr:GetActor("19036")
            actor:RequestCoopInteractionFromSubStartPoint(105901, 1903605)
            actor:RequestInteraction(npcs.Coop_GorouData.alias)
        end, nil, nil, "", false, true)
    end)

    self:DestroySelf()
end

function Q19036Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19036Trigger
