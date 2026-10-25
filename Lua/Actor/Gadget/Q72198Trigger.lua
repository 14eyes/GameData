require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72198Trigger = class("Q72198Trigger", GadgetActorProxy)
Q72198Trigger.defaultAlias = "Q72198Trigger"
local Q72198ClientConfig = require("Quest/Client/Q72198ClientConfig")

local mainID = Q72198ClientConfig.MainID
local actorAlias = Q72198ClientConfig.ActorAlias
local subIDs = Q72198ClientConfig.SubIDs
local datas = Q72198ClientConfig.Datas

function Q72198Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72198Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(33.85836, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72198Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7219801)
    self:DestroySelf()
end

function Q72198Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72198Trigger
