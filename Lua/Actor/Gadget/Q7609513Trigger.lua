require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609513Trigger = class("Q7609513Trigger", GadgetActorProxy)
Q7609513Trigger.defaultAlias = "Q7609513Trigger"
local Q76095ClientConfig = require("Quest/Client/Q76095ClientConfig")

local this
local subIDs = Q76095ClientConfig.SubIDs
local datas = Q76095ClientConfig.Datas
local npcs = Q76095ClientConfig.Npcs
local points = Q76095ClientConfig.Points

function Q7609513Trigger:OnPostDataPrepare()
    print("Q7609513Trigger - OnPostDataPrepare")
    this = self
end

function Q7609513Trigger:OnPostComponentPrepare()
    print("Q7609513Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76095)
end

function Q7609513Trigger:TriggerIn()
    print("Q7609513Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609513)
    this:DestroySelf()
end

function Q7609513Trigger:PreTriggerIn()
    print("Q7609513Trigger - PreTriggerIn")
end

function Q7609513Trigger:LightUpTriggerIn()
    print("Q7609513Trigger - LightUpTriggerIn")
end

function Q7609513Trigger:TriggerOut()
    print("Q7609513Trigger - TriggerOut")
end

return Q7609513Trigger
