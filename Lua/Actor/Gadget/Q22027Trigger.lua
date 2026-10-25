require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22027Trigger = class("Q22027Trigger", GadgetActorProxy)
Q22027Trigger.defaultAlias = "Q22027Trigger"
local Q22027ClientConfig = require("Quest/Client/Q22027ClientConfig")

local mainID = Q22027ClientConfig.MainID
local actorAlias = Q22027ClientConfig.ActorAlias
local subIDs = Q22027ClientConfig.SubIDs
local npcs = Q22027ClientConfig.Npcs
local datas = Q22027ClientConfig.Datas

function Q22027Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22027Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22027Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 2202703)
    self:DestroySelf()
end

function Q22027Trigger:TriggerOut()
    print("TriggerOut")
end

return Q22027Trigger
