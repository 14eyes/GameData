require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141305Trigger = class("Q4141305Trigger", GadgetActorProxy)
Q4141305Trigger.defaultAlias = "Q4141305Trigger"
local Q41413ClientConfig = require("Quest/Client/Q41413ClientConfig")

local mainID = Q41413ClientConfig.MainID
local actorAlias = Q41413ClientConfig.ActorAlias
local subIDs = Q41413ClientConfig.SubIDs
local npcs = Q41413ClientConfig.Npcs
local datas = Q41413ClientConfig.Datas

function Q4141305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141305Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4141305)
    self:DestroySelf()
end

function Q4141305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4141305Trigger
