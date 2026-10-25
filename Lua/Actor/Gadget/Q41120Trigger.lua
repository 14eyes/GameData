require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41120Trigger = class("Q41120Trigger", GadgetActorProxy)
Q41120Trigger.defaultAlias = "Q41120Trigger"
local Q41120ClientConfig = require("Quest/Client/Q41120ClientConfig")

local mainID = Q41120ClientConfig.MainID
local actorAlias = Q41120ClientConfig.ActorAlias
local subIDs = Q41120ClientConfig.SubIDs
local npcs = Q41120ClientConfig.Npcs
local datas = Q41120ClientConfig.Datas

function Q41120Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41120Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41120Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:DestroyEntityActor(datas.Q41120Trigger_.alias, 3, false)
    actorMgr:GetActor(actorAlias):SetQuestVar(subIDs.q4112004, 0, 1)
end

function Q41120Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41120Trigger
