require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005808Trigger = class("Q4005808Trigger", GadgetActorProxy)
Q4005808Trigger.defaultAlias = "Q4005808Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005808Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005808)
    self:DestroySelf()
end

function Q4005808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005808Trigger
