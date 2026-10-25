require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615206Trigger = class("Q7615206Trigger", GadgetActorProxy)
Q7615206Trigger.defaultAlias = "Q7615206Trigger"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615206Trigger:OnPostDataPrepare()
    print("Q7615206Trigger - OnPostDataPrepare")
    this = self
end

function Q7615206Trigger:OnPostComponentPrepare()
    print("Q7615206Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615206Trigger:TriggerIn()
    print("Q7615206Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7615206})
    this:DestroySelf()
end

function Q7615206Trigger:PreTriggerIn()
    print("Q7615206Trigger - PreTriggerIn")
end

function Q7615206Trigger:LightUpTriggerIn()
    print("Q7615206Trigger - LightUpTriggerIn")
end

function Q7615206Trigger:TriggerOut()
    print("Q7615206Trigger - TriggerOut")
end

return Q7615206Trigger
