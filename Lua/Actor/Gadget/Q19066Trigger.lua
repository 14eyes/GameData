require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19066Trigger = class("Q19066Trigger", GadgetActorProxy)
Q19066Trigger.defaultAlias = "Q19066Trigger"
local Q19066ClientConfig = require("Quest/Client/Q19066ClientConfig")

local mainID = Q19066ClientConfig.MainID
local actorAlias = Q19066ClientConfig.ActorAlias
local subIDs = Q19066ClientConfig.SubIDs
local npcs = Q19066ClientConfig.Npcs
local datas = Q19066ClientConfig.Datas

function Q19066Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19066Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(24, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19066Trigger:TriggerIn()
    print("triggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    local questNpcCreateTask = actor.CreateQuestNpcCreateTask(actor, {npcs.PaimonData.alias})
    self:ShowBlackScreen(0.2, 2, 0.5, function()
        actor:CreateQuestNpcById(1906612, npcs.PaimonData.id, 5)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, questNpcCreateTask)

    self:DestroySelf()
end

function Q19066Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19066Trigger
