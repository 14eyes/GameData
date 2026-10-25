require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620409Trigger = class("Q7620409Trigger", GadgetActorProxy)
Q7620409Trigger.defaultAlias = "Q7620409Trigger"
local Q76204ClientConfig = require("Quest/Client/Q76204ClientConfig")

local this
local subIDs = Q76204ClientConfig.SubIDs
local datas = Q76204ClientConfig.Datas
local npcs = Q76204ClientConfig.Npcs
local points = Q76204ClientConfig.Points

function Q7620409Trigger:OnPostDataPrepare()
    print("Q7620409Trigger - OnPostDataPrepare")
    this = self
end

function Q7620409Trigger:OnPostComponentPrepare()
    print("Q7620409Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 2, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76204)
end

function Q7620409Trigger:TriggerIn()
    print("Q7620409Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620409})
    this:DestroySelf()
end

function Q7620409Trigger:PreTriggerIn()
    print("Q7620409Trigger - PreTriggerIn")
end

function Q7620409Trigger:LightUpTriggerIn()
    print("Q7620409Trigger - LightUpTriggerIn")
end

function Q7620409Trigger:TriggerOut()
    print("Q7620409Trigger - TriggerOut")
end

return Q7620409Trigger
