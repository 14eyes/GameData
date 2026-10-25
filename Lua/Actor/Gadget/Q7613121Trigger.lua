require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613121Trigger = class("Q7613121Trigger", GadgetActorProxy)
Q7613121Trigger.defaultAlias = "Q7613121Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613121Trigger:OnPostDataPrepare()
    print("Q7613121Trigger - OnPostDataPrepare")
    this = self
end

function Q7613121Trigger:OnPostComponentPrepare()
    print("Q7613121Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 20, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613121Trigger:TriggerIn()
    print("Q7613121Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613121})
    this:DestroySelf()
end

function Q7613121Trigger:PreTriggerIn()
    print("Q7613121Trigger - PreTriggerIn")
end

function Q7613121Trigger:LightUpTriggerIn()
    print("Q7613121Trigger - LightUpTriggerIn")
end

function Q7613121Trigger:TriggerOut()
    print("Q7613121Trigger - TriggerOut")
end

return Q7613121Trigger
