require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005809Trigger = class("Q4005809Trigger", GadgetActorProxy)
Q4005809Trigger.defaultAlias = "Q4005809Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005809Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005809Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005809Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005809)
    self:DestroySelf()
end

function Q4005809Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005809Trigger
