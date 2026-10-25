require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71808Trigger = class("Q71808Trigger", GadgetActorProxy)
Q71808Trigger.defaultAlias = "Q71808Trigger"
local Q71808ClientConfig = require("Quest/Client/Q71808ClientConfig")

local mainID = Q71808ClientConfig.MainID
local actorAlias = Q71808ClientConfig.ActorAlias
local subIDs = Q71808ClientConfig.SubIDs
local npcs = Q71808ClientConfig.Npcs
local datas = Q71808ClientConfig.Datas

function Q71808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71808Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7180806)
end

function Q71808Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q71808Trigger
