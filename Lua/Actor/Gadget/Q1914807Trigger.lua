require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914807Trigger = class("Q1914807Trigger", GadgetActorProxy)
Q1914807Trigger.defaultAlias = "Q1914807Trigger"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914807Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914807Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914807Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19148"):CallDelay(1.5, function(arg1)
        actorMgr:GetActor("19148"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
            local actor = actorMgr:GetActor("19148")
            actor:CreateQuestNpcById(1914807, npcs.Coop_ShinobuData.id, 1)
            actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
        end, nil, nil, "", false, true)
    end)

    self:DestroySelf()
end

function Q1914807Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914807Trigger
