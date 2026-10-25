require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613105Trigger = class("Q7613105Trigger", GadgetActorProxy)
Q7613105Trigger.defaultAlias = "Q7613105Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613105Trigger:OnPostDataPrepare()
    print("Q7613105Trigger - OnPostDataPrepare")
    this = self
end

function Q7613105Trigger:OnPostComponentPrepare()
    print("Q7613105Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 60, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613105Trigger:TriggerIn()
    print("Q7613105Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613105})
    this:DestroySelf()
end

function Q7613105Trigger:PreTriggerIn()
    print("Q7613105Trigger - PreTriggerIn")
end

function Q7613105Trigger:LightUpTriggerIn()
    print("Q7613105Trigger - LightUpTriggerIn")
end

function Q7613105Trigger:TriggerOut()
    print("Q7613105Trigger - TriggerOut")
end

return Q7613105Trigger
