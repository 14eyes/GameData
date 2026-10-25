require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71092Trigger = class("Q71092Trigger", GadgetActorProxy)
Q71092Trigger.defaultAlias = "Q71092Trigger"
local Q71092ClientConfig = require("Quest/Client/Q71092ClientConfig")

local subIDs = Q71092ClientConfig.SubIDs
local datas = Q71092ClientConfig.Datas

function Q71092Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71092Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71092Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7109201)
    self:DestroySelf()
end

function Q71092Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71092Trigger
