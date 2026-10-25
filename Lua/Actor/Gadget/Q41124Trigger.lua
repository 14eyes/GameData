require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41124Trigger = class("Q41124Trigger", GadgetActorProxy)
Q41124Trigger.defaultAlias = "Q41124Trigger"
local Q41124ClientConfig = require("Quest/Client/Q41124ClientConfig")

local mainID = Q41124ClientConfig.MainID
local actorAlias = Q41124ClientConfig.ActorAlias
local subIDs = Q41124ClientConfig.SubIDs
local npcs = Q41124ClientConfig.Npcs
local datas = Q41124ClientConfig.Datas

function Q41124Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41124Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41124Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:DestroyEntityActor(datas.Q41124Trigger_.alias, 3, false)
    actorMgr:GetActor(actorAlias):SetQuestVarByMainId(1, 1)
end

function Q41124Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41124Trigger
