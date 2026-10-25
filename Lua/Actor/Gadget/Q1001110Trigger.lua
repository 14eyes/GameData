require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001110Trigger = class("Q1001110Trigger", GadgetActorProxy)
Q1001110Trigger.defaultAlias = "Q1001110Trigger"
local Q10011ClientConfig = require("Quest/Client/Q10011ClientConfig")

local this
local subIDs = Q10011ClientConfig.SubIDs
local datas = Q10011ClientConfig.Datas
local npcs = Q10011ClientConfig.Npcs
local points = Q10011ClientConfig.Points

function Q1001110Trigger:OnPostDataPrepare()
    print("Q1001110Trigger - OnPostDataPrepare")
    this = self
end

function Q1001110Trigger:OnPostComponentPrepare()
    print("Q1001110Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10011)
end

function Q1001110Trigger:TriggerIn()
    print("Q1001110Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {1001110})
    this:DestroySelf()
end

function Q1001110Trigger:PreTriggerIn()
    print("Q1001110Trigger - PreTriggerIn")
end

function Q1001110Trigger:LightUpTriggerIn()
    print("Q1001110Trigger - LightUpTriggerIn")
end

function Q1001110Trigger:TriggerOut()
    print("Q1001110Trigger - TriggerOut")
end

return Q1001110Trigger
