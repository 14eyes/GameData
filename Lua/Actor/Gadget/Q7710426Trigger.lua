require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710426Trigger = class("Q7710426Trigger", GadgetActorProxy)
Q7710426Trigger.defaultAlias = "Q7710426Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710426Trigger:OnPostDataPrepare()
    print("Q7710426Trigger - OnPostDataPrepare")
    this = self
end

function Q7710426Trigger:OnPostComponentPrepare()
    print("Q7710426Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710426Trigger:TriggerIn()
    print("Q7710426Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710426})
    this:DestroySelf()
end

function Q7710426Trigger:PreTriggerIn()
    print("Q7710426Trigger - PreTriggerIn")
end

function Q7710426Trigger:LightUpTriggerIn()
    print("Q7710426Trigger - LightUpTriggerIn")
end

function Q7710426Trigger:TriggerOut()
    print("Q7710426Trigger - TriggerOut")
end

return Q7710426Trigger
