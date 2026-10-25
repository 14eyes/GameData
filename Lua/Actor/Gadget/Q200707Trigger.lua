require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200707Trigger = class("Q200707Trigger", GadgetActorProxy)
Q200707Trigger.defaultAlias = "Q200707Trigger"
local Q2007ClientConfig = require("Quest/Client/Q2007ClientConfig")

local mainID = Q2007ClientConfig.MainID
local actorAlias = Q2007ClientConfig.ActorAlias
local subIDs = Q2007ClientConfig.SubIDs
local npcs = Q2007ClientConfig.Npcs
local datas = Q2007ClientConfig.Datas

function Q200707Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200707Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200707Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200707, npcs.Npc1013Data.id, 0)
    actor:RequestInteraction(npcs.Npc1013Data.alias)
    self:DestroySelf()
end

function Q200707Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200707Trigger
