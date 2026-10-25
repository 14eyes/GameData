require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609504Trigger = class("Q7609504Trigger", GadgetActorProxy)
Q7609504Trigger.defaultAlias = "Q7609504Trigger"
local Q76095ClientConfig = require("Quest/Client/Q76095ClientConfig")

local this
local subIDs = Q76095ClientConfig.SubIDs
local datas = Q76095ClientConfig.Datas
local npcs = Q76095ClientConfig.Npcs
local points = Q76095ClientConfig.Points

function Q7609504Trigger:OnPostDataPrepare()
    print("Q7609504Trigger - OnPostDataPrepare")
    this = self
end

function Q7609504Trigger:OnPostComponentPrepare()
    print("Q7609504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76095)
end

function Q7609504Trigger:TriggerIn()
    print("Q7609504Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609504)
    this:DestroySelf()
end

function Q7609504Trigger:PreTriggerIn()
    print("Q7609504Trigger - PreTriggerIn")
end

function Q7609504Trigger:LightUpTriggerIn()
    print("Q7609504Trigger - LightUpTriggerIn")
end

function Q7609504Trigger:TriggerOut()
    print("Q7609504Trigger - TriggerOut")
end

return Q7609504Trigger
