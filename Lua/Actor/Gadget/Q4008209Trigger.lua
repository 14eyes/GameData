require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008209Trigger = class("Q4008209Trigger", GadgetActorProxy)
Q4008209Trigger.defaultAlias = "Q4008209Trigger"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008209Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008209Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008209Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008209)
    self:DestroySelf()
end

function Q4008209Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008209Trigger
