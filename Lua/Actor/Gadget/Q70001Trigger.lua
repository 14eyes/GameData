require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70001Trigger = class("Q70001Trigger", GadgetActorProxy)
Q70001Trigger.defaultAlias = "Q70001Trigger"
local Q70001ClientConfig = require("Quest/Client/Q70001ClientConfig")

local mainID = Q70001ClientConfig.MainID
local actorAlias = Q70001ClientConfig.ActorAlias
local subIDs = Q70001ClientConfig.SubIDs
local npcs = Q70001ClientConfig.Npcs
local datas = Q70001ClientConfig.Datas

function Q70001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7000101)
end

function Q70001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70001Trigger
