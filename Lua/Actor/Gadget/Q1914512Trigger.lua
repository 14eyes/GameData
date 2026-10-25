require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914512Trigger = class("Q1914512Trigger", GadgetActorProxy)
Q1914512Trigger.defaultAlias = "Q1914512Trigger"
local Q19145ClientConfig = require("Quest/Client/Q19145ClientConfig")

local subIDs = Q19145ClientConfig.SubIDs
local npcs = Q19145ClientConfig.Npcs
local datas = Q19145ClientConfig.Datas

function Q1914512Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914512Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914512Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19145"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19145")
        actor:CreateQuestNpcById(1914512, npcs.Coop_ShinobuData.id, 1)
        actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q1914512Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914512Trigger
