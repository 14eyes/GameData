require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620205Trigger = class("Q7620205Trigger", GadgetActorProxy)
Q7620205Trigger.defaultAlias = "Q7620205Trigger"
local Q76202ClientConfig = require("Quest/Client/Q76202ClientConfig")

local this
local subIDs = Q76202ClientConfig.SubIDs
local datas = Q76202ClientConfig.Datas
local npcs = Q76202ClientConfig.Npcs
local points = Q76202ClientConfig.Points

function Q7620205Trigger:OnPostDataPrepare()
    print("Q7620205Trigger - OnPostDataPrepare")
    this = self
end

function Q7620205Trigger:OnPostComponentPrepare()
    print("Q7620205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76202)
end

function Q7620205Trigger:TriggerIn()
    print("Q7620205Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620205})
    this:DestroySelf()
end

function Q7620205Trigger:PreTriggerIn()
    print("Q7620205Trigger - PreTriggerIn")
end

function Q7620205Trigger:LightUpTriggerIn()
    print("Q7620205Trigger - LightUpTriggerIn")
end

function Q7620205Trigger:TriggerOut()
    print("Q7620205Trigger - TriggerOut")
end

return Q7620205Trigger
