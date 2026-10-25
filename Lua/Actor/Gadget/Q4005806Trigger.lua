require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005806Trigger = class("Q4005806Trigger", GadgetActorProxy)
Q4005806Trigger.defaultAlias = "Q4005806Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005806Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005806Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005806Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005806)
    self:DestroySelf()
end

function Q4005806Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005806Trigger
