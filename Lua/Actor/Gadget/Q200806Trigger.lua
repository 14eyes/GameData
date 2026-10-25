require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200806Trigger = class("Q200806Trigger", GadgetActorProxy)
Q200806Trigger.defaultAlias = "Q200806Trigger"
local Q2008ClientConfig = require("Quest/Client/Q2008ClientConfig")

local mainID = Q2008ClientConfig.MainID
local actorAlias = Q2008ClientConfig.ActorAlias
local subIDs = Q2008ClientConfig.SubIDs
local npcs = Q2008ClientConfig.Npcs
local datas = Q2008ClientConfig.Datas

function Q200806Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200806Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200806Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200806, npcs.Npc1013Data.id, 0)
    actor:RequestInteraction(npcs.Npc1013Data.alias)
    self:DestroySelf()
end

function Q200806Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200806Trigger
