require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609833Trigger = class("Q7609833Trigger", GadgetActorProxy)
Q7609833Trigger.defaultAlias = "Q7609833Trigger"
local Q76098ClientConfig = require("Quest/Client/Q76098ClientConfig")

local this
local subIDs = Q76098ClientConfig.SubIDs
local datas = Q76098ClientConfig.Datas
local npcs = Q76098ClientConfig.Npcs
local points = Q76098ClientConfig.Points

function Q7609833Trigger:OnPostDataPrepare()
    print("Q7609833Trigger - OnPostDataPrepare")
    this = self
end

function Q7609833Trigger:OnPostComponentPrepare()
    print("Q7609833Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76098)
end

function Q7609833Trigger:TriggerIn()
    print("Q7609833Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609833)
    this:DestroySelf()
end

function Q7609833Trigger:PreTriggerIn()
    print("Q7609833Trigger - PreTriggerIn")
end

function Q7609833Trigger:LightUpTriggerIn()
    print("Q7609833Trigger - LightUpTriggerIn")
end

function Q7609833Trigger:TriggerOut()
    print("Q7609833Trigger - TriggerOut")
end

return Q7609833Trigger
