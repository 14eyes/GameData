require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711004Trigger = class("Q7711004Trigger", GadgetActorProxy)
Q7711004Trigger.defaultAlias = "Q7711004Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711004Trigger:OnPostDataPrepare()
    print("Q7711004Trigger - OnPostDataPrepare")
    this = self
end

function Q7711004Trigger:OnPostComponentPrepare()
    print("Q7711004Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(13, 11, 12, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711004Trigger:TriggerIn()
    print("Q7711004Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711004)
    this:DestroySelf()
end

function Q7711004Trigger:PreTriggerIn()
    print("Q7711004Trigger - PreTriggerIn")
end

function Q7711004Trigger:LightUpTriggerIn()
    print("Q7711004Trigger - LightUpTriggerIn")
end

function Q7711004Trigger:TriggerOut()
    print("Q7711004Trigger - TriggerOut")
end

return Q7711004Trigger
