require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300510Trigger = class("Q300510Trigger", GadgetActorProxy)
Q300510Trigger.defaultAlias = "Q300510Trigger"
local Q3005ClientConfig = require("Quest/Client/Q3005ClientConfig")

local subIDs = Q3005ClientConfig.SubIDs
local npcs = Q3005ClientConfig.Npcs
local datas = Q3005ClientConfig.Datas

function Q300510Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300510Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300510Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300510)
    self:DestroySelf()
end

function Q300510Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300510Trigger
