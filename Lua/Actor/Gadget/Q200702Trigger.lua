require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200702Trigger = class("Q200702Trigger", GadgetActorProxy)
Q200702Trigger.defaultAlias = "Q200702Trigger"
local Q2007ClientConfig = require("Quest/Client/Q2007ClientConfig")

local mainID = Q2007ClientConfig.MainID
local actorAlias = Q2007ClientConfig.ActorAlias
local subIDs = Q2007ClientConfig.SubIDs
local npcs = Q2007ClientConfig.Npcs
local datas = Q2007ClientConfig.Datas

function Q200702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200702Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200702, npcs.Npc1035Data.id, 0)
    actor:RequestInteraction(npcs.Npc1035Data.alias)
    self:DestroySelf()
end

function Q200702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200702Trigger
