require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914802Trigger = class("Q1914802Trigger", GadgetActorProxy)
Q1914802Trigger.defaultAlias = "Q1914802Trigger"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914802Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914802Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914802Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19148"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19148")
        actor:CreateQuestNpcById(1914802, npcs.Coop_ShinobuData.id, 1)
        actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q1914802Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914802Trigger
