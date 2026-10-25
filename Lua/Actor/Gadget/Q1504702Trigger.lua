require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504702Trigger = class("Q1504702Trigger", GadgetActorProxy)
Q1504702Trigger.defaultAlias = "Q1504702Trigger"
local Q15047ClientConfig = require("Quest/Client/Q15047ClientConfig")

local this
local subIDs = Q15047ClientConfig.SubIDs
local datas = Q15047ClientConfig.Datas
local npcs = Q15047ClientConfig.Npcs
local points = Q15047ClientConfig.Points

function Q1504702Trigger:OnPostDataPrepare()
    print("Q1504702Trigger - OnPostDataPrepare")
    this = self
end

function Q1504702Trigger:OnPostComponentPrepare()
    print("Q1504702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15047)
end

function Q1504702Trigger:TriggerIn()
    print("Q1504702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504702)
    this:DestroySelf()
end

function Q1504702Trigger:PreTriggerIn()
    print("Q1504702Trigger - PreTriggerIn")
end

function Q1504702Trigger:LightUpTriggerIn()
    print("Q1504702Trigger - LightUpTriggerIn")
end

function Q1504702Trigger:TriggerOut()
    print("Q1504702Trigger - TriggerOut")
end

return Q1504702Trigger
