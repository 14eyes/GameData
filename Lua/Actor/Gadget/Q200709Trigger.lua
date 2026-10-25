require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200709Trigger = class("Q200709Trigger", GadgetActorProxy)
Q200709Trigger.defaultAlias = "Q200709Trigger"
local Q2007ClientConfig = require("Quest/Client/Q2007ClientConfig")

local mainID = Q2007ClientConfig.MainID
local actorAlias = Q2007ClientConfig.ActorAlias
local subIDs = Q2007ClientConfig.SubIDs
local npcs = Q2007ClientConfig.Npcs
local datas = Q2007ClientConfig.Datas

function Q200709Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200709Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200709Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200709, npcs.Npc1035Data.id, 0)
    actor:RequestInteraction(npcs.Npc1035Data.alias)
    self:DestroySelf()
end

function Q200709Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200709Trigger
