require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300504Trigger = class("Q300504Trigger", GadgetActorProxy)
Q300504Trigger.defaultAlias = "Q300504Trigger"
local Q3005ClientConfig = require("Quest/Client/Q3005ClientConfig")

local subIDs = Q3005ClientConfig.SubIDs
local npcs = Q3005ClientConfig.Npcs
local datas = Q3005ClientConfig.Datas

function Q300504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300504Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300504)
    self:DestroySelf()
end

function Q300504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300504Trigger
