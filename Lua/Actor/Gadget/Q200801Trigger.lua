require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200801Trigger = class("Q200801Trigger", GadgetActorProxy)
Q200801Trigger.defaultAlias = "Q200801Trigger"
local Q2008ClientConfig = require("Quest/Client/Q2008ClientConfig")

local mainID = Q2008ClientConfig.MainID
local actorAlias = Q2008ClientConfig.ActorAlias
local subIDs = Q2008ClientConfig.SubIDs
local npcs = Q2008ClientConfig.Npcs
local datas = Q2008ClientConfig.Datas

function Q200801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200801Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200801, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q200801Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200801Trigger
