require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19055Trigger = class("Q19055Trigger", GadgetActorProxy)
Q19055Trigger.defaultAlias = "Q19055Trigger"
local Q19055ClientConfig = require("Quest/Client/Q19055ClientConfig")

local subIDs = Q19055ClientConfig.SubIDs
local npcs = Q19055ClientConfig.Npcs
local datas = Q19055ClientConfig.Datas

function Q19055Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19055Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19055Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19055"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19055")
        actor:CreateQuestNpcById(1905501, npcs.Coop_GorouData.id, 0)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19055Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19055Trigger
