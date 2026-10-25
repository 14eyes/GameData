require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200710Trigger = class("Q200710Trigger", GadgetActorProxy)
Q200710Trigger.defaultAlias = "Q200710Trigger"
local Q2007ClientConfig = require("Quest/Client/Q2007ClientConfig")

local mainID = Q2007ClientConfig.MainID
local actorAlias = Q2007ClientConfig.ActorAlias
local subIDs = Q2007ClientConfig.SubIDs
local npcs = Q2007ClientConfig.Npcs
local datas = Q2007ClientConfig.Datas

function Q200710Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200710Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200710Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200710, npcs.Npc1033Data.id, 0)
    actor:RequestInteraction(npcs.Npc1033Data.alias)
    self:DestroySelf()
end

function Q200710Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200710Trigger
