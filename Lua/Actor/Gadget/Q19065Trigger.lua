require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19065Trigger = class("Q19065Trigger", GadgetActorProxy)
Q19065Trigger.defaultAlias = "Q19065Trigger"
local Q19065ClientConfig = require("Quest/Client/Q19065ClientConfig")

local mainID = Q19065ClientConfig.MainID
local actorAlias = Q19065ClientConfig.ActorAlias
local subIDs = Q19065ClientConfig.SubIDs
local npcs = Q19065ClientConfig.Npcs
local datas = Q19065ClientConfig.Datas

function Q19065Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19065Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19065Trigger:TriggerIn()
    print("triggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    local questNpcCreateTask = actor.CreateQuestNpcCreateTask(actor, {npcs.PaimonData.alias})
    self:ShowBlackScreen(0.2, 2, 0.5, function()
        actor:CreateQuestNpcById(1906513, npcs.PaimonData.id, 5)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, questNpcCreateTask)

    self:DestroySelf()
end

function Q19065Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19065Trigger
