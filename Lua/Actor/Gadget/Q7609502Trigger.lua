require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609502Trigger = class("Q7609502Trigger", GadgetActorProxy)
Q7609502Trigger.defaultAlias = "Q7609502Trigger"
local Q76095ClientConfig = require("Quest/Client/Q76095ClientConfig")

local this
local subIDs = Q76095ClientConfig.SubIDs
local datas = Q76095ClientConfig.Datas
local npcs = Q76095ClientConfig.Npcs
local points = Q76095ClientConfig.Points

function Q7609502Trigger:OnPostDataPrepare()
    print("Q7609502Trigger - OnPostDataPrepare")
    this = self
end

function Q7609502Trigger:OnPostComponentPrepare()
    print("Q7609502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76095)
end

function Q7609502Trigger:TriggerIn()
    print("Q7609502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609502)
    this:DestroySelf()
end

function Q7609502Trigger:PreTriggerIn()
    print("Q7609502Trigger - PreTriggerIn")
end

function Q7609502Trigger:LightUpTriggerIn()
    print("Q7609502Trigger - LightUpTriggerIn")
end

function Q7609502Trigger:TriggerOut()
    print("Q7609502Trigger - TriggerOut")
end

return Q7609502Trigger
