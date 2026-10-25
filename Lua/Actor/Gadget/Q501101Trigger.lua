require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501101Trigger = class("Q501101Trigger", GadgetActorProxy)
Q501101Trigger.defaultAlias = "Q501101Trigger"
local Q5011ClientConfig = require("Quest/Client/Q5011ClientConfig")

local this
local subIDs = Q5011ClientConfig.SubIDs
local datas = Q5011ClientConfig.Datas
local npcs = Q5011ClientConfig.Npcs
local points = Q5011ClientConfig.Points

function Q501101Trigger:OnPostDataPrepare()
    print("Q501101Trigger - OnPostDataPrepare")
    this = self
end

function Q501101Trigger:OnPostComponentPrepare()
    print("Q501101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5011)
end

function Q501101Trigger:TriggerIn()
    print("Q501101Trigger - TriggerIn")
    globalActor:ChangeDay24Time(8, true)
end

function Q501101Trigger:PreTriggerIn()
    print("Q501101Trigger - PreTriggerIn")
end

function Q501101Trigger:LightUpTriggerIn()
    print("Q501101Trigger - LightUpTriggerIn")
end

function Q501101Trigger:TriggerOut()
    print("Q501101Trigger - TriggerOut")
end

return Q501101Trigger
