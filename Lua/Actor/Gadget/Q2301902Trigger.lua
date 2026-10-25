require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2301902Trigger = class("Q2301902Trigger", GadgetActorProxy)
Q2301902Trigger.defaultAlias = "Q2301902Trigger"
local Q23019ClientConfig = require("Quest/Client/Q23019ClientConfig")

local subIDs = Q23019ClientConfig.SubIDs
local npcs = Q23019ClientConfig.Npcs
local datas = Q23019ClientConfig.Datas

function Q2301902Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2301902Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2301902Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2301902)
    self:DestroySelf()
end

function Q2301902Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2301902Trigger
