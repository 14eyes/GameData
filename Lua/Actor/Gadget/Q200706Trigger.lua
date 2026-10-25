require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200706Trigger = class("Q200706Trigger", GadgetActorProxy)
Q200706Trigger.defaultAlias = "Q200706Trigger"
local Q2007ClientConfig = require("Quest/Client/Q2007ClientConfig")

local mainID = Q2007ClientConfig.MainID
local actorAlias = Q2007ClientConfig.ActorAlias
local subIDs = Q2007ClientConfig.SubIDs
local npcs = Q2007ClientConfig.Npcs
local datas = Q2007ClientConfig.Datas

function Q200706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200706Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200706, npcs.Npc1035Data.id, 2)
    actor:RequestInteraction(npcs.Npc1035Data.alias)
    self:DestroySelf()
end

function Q200706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200706Trigger
