require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200304Trigger = class("Q200304Trigger", GadgetActorProxy)
Q200304Trigger.defaultAlias = "Q200304Trigger"
local Q2003ClientConfig = require("Quest/Client/Q2003ClientConfig")

local mainID = Q2003ClientConfig.MainID
local actorAlias = Q2003ClientConfig.ActorAlias
local subIDs = Q2003ClientConfig.SubIDs
local npcs = Q2003ClientConfig.Npcs
local datas = Q2003ClientConfig.Datas

function Q200304Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200304Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200304Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200304, npcs.Npc1013Data.id, 0)
    actor:RequestInteraction(npcs.Npc1013Data.alias)
    self:DestroySelf()
end

function Q200304Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200304Trigger
