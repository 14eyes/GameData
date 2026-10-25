require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72126Trigger = class("Q72126Trigger", GadgetActorProxy)
Q72126Trigger.defaultAlias = "Q72126Trigger"
local Q72126ClientConfig = require("Quest/Client/Q72126ClientConfig")

local mainID = Q72126ClientConfig.MainID
local actorAlias = Q72126ClientConfig.ActorAlias
local subIDs = Q72126ClientConfig.SubIDs
local datas = Q72126ClientConfig.Datas

function Q72126Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72126Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72126Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7212604)
    self:DestroySelf()
end

function Q72126Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72126Trigger
