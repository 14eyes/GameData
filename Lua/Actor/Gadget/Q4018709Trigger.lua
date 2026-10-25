require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018709Trigger = class("Q4018709Trigger", GadgetActorProxy)
Q4018709Trigger.defaultAlias = "Q4018709Trigger"
local Q40187ClientConfig = require("Quest/Client/Q40187ClientConfig")

local this
local subIDs = Q40187ClientConfig.SubIDs
local datas = Q40187ClientConfig.Datas
local npcs = Q40187ClientConfig.Npcs
local points = Q40187ClientConfig.Points

function Q4018709Trigger:OnPostDataPrepare()
    print("Q4018709Trigger - OnPostDataPrepare")
    this = self
end

function Q4018709Trigger:OnPostComponentPrepare()
    print("Q4018709Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40187)
end

function Q4018709Trigger:TriggerIn()
    print("Q4018709Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4018709)
    this:DestroySelf()
end

function Q4018709Trigger:PreTriggerIn()
    print("Q4018709Trigger - PreTriggerIn")
end

function Q4018709Trigger:LightUpTriggerIn()
    print("Q4018709Trigger - LightUpTriggerIn")
end

function Q4018709Trigger:TriggerOut()
    print("Q4018709Trigger - TriggerOut")
end

return Q4018709Trigger
