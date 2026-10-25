require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603510Trigger = class("Q603510Trigger", GadgetActorProxy)
Q603510Trigger.defaultAlias = "Q603510Trigger"
local Q6035ClientConfig = require("Quest/Client/Q6035ClientConfig")

local this
local subIDs = Q6035ClientConfig.SubIDs
local datas = Q6035ClientConfig.Datas
local npcs = Q6035ClientConfig.Npcs
local points = Q6035ClientConfig.Points

function Q603510Trigger:OnPostDataPrepare()
    print("Q603510Trigger - OnPostDataPrepare")
    this = self
end

function Q603510Trigger:OnPostComponentPrepare()
    print("Q603510Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 5, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6035)
end

function Q603510Trigger:TriggerIn()
    print("Q603510Trigger - TriggerIn")
end

function Q603510Trigger:PreTriggerIn()
    print("Q603510Trigger - PreTriggerIn")
    actorUtils.FinishQuestWithParam({false}, {603510})
    this:DestroySelf()
end

function Q603510Trigger:LightUpTriggerIn()
    print("Q603510Trigger - LightUpTriggerIn")
end

function Q603510Trigger:TriggerOut()
    print("Q603510Trigger - TriggerOut")
end

return Q603510Trigger
