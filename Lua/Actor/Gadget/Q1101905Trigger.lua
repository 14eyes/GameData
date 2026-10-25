require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101905Trigger = class("Q1101905Trigger", GadgetActorProxy)
Q1101905Trigger.defaultAlias = "Q1101905Trigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101905Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101905Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10.73643, 6.147881, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101905Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1101905)
    this:DestroySelf()
end

function Q1101905Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101905Trigger
