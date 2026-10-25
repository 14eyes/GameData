require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005701Trigger = class("Q7005701Trigger", GadgetActorProxy)
Q7005701Trigger.defaultAlias = "Q7005701Trigger"
local Q70057ClientConfig = require("Quest/Client/Q70057ClientConfig")

local this
local subIDs = Q70057ClientConfig.SubIDs
local points = Q70057ClientConfig.Points

function Q7005701Trigger:OnPostDataPrepare()
    print("Q7005701Trigger - OnPostDataPrepare")
    this = self
end

function Q7005701Trigger:OnPostComponentPrepare()
    print("Q7005701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70057)
end

function Q7005701Trigger:TriggerIn()
    print("Q7005701Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005701)
    this:DestroySelf()
end

function Q7005701Trigger:PreTriggerIn()
    print("Q7005701Trigger - PreTriggerIn")
end

function Q7005701Trigger:LightUpTriggerIn()
    print("Q7005701Trigger - LightUpTriggerIn")
end

function Q7005701Trigger:TriggerOut()
    print("Q7005701Trigger - TriggerOut")
end

return Q7005701Trigger
