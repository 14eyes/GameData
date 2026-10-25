require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200011Trigger = class("Q200011Trigger", GadgetActorProxy)
Q200011Trigger.defaultAlias = "Q200011Trigger"
local Q2000ClientConfig = require("Quest/Client/Q2000ClientConfig")

local mainID = Q2000ClientConfig.MainID
local actorAlias = Q2000ClientConfig.ActorAlias
local subIDs = Q2000ClientConfig.SubIDs
local npcs = Q2000ClientConfig.Npcs
local datas = Q2000ClientConfig.Datas

function Q200011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200011Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 200011)
    self:DestroySelf()
end

function Q200011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200011Trigger
