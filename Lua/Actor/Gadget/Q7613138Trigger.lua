require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613138Trigger = class("Q7613138Trigger", GadgetActorProxy)
Q7613138Trigger.defaultAlias = "Q7613138Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613138Trigger:OnPostDataPrepare()
    print("Q7613138Trigger - OnPostDataPrepare")
    this = self
end

function Q7613138Trigger:OnPostComponentPrepare()
    print("Q7613138Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(250, 250, 80, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613138Trigger:TriggerIn()
    print("Q7613138Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613138})
    this:DestroySelf()
end

function Q7613138Trigger:PreTriggerIn()
    print("Q7613138Trigger - PreTriggerIn")
end

function Q7613138Trigger:LightUpTriggerIn()
    print("Q7613138Trigger - LightUpTriggerIn")
end

function Q7613138Trigger:TriggerOut()
    print("Q7613138Trigger - TriggerOut")
end

return Q7613138Trigger
