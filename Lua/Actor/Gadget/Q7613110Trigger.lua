require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613110Trigger = class("Q7613110Trigger", GadgetActorProxy)
Q7613110Trigger.defaultAlias = "Q7613110Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613110Trigger:OnPostDataPrepare()
    print("Q7613110Trigger - OnPostDataPrepare")
    this = self
end

function Q7613110Trigger:OnPostComponentPrepare()
    print("Q7613110Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 200, 300, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613110Trigger:TriggerIn()
    print("Q7613110Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613110})
    this:DestroySelf()
end

function Q7613110Trigger:PreTriggerIn()
    print("Q7613110Trigger - PreTriggerIn")
end

function Q7613110Trigger:LightUpTriggerIn()
    print("Q7613110Trigger - LightUpTriggerIn")
end

function Q7613110Trigger:TriggerOut()
    print("Q7613110Trigger - TriggerOut")
end

return Q7613110Trigger
