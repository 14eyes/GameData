require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613122Trigger = class("Q7613122Trigger", GadgetActorProxy)
Q7613122Trigger.defaultAlias = "Q7613122Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613122Trigger:OnPostDataPrepare()
    print("Q7613122Trigger - OnPostDataPrepare")
    this = self
end

function Q7613122Trigger:OnPostComponentPrepare()
    print("Q7613122Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(17.5, 40, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613122Trigger:TriggerIn()
    print("Q7613122Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613122})
    this:DestroySelf()
end

function Q7613122Trigger:PreTriggerIn()
    print("Q7613122Trigger - PreTriggerIn")
end

function Q7613122Trigger:LightUpTriggerIn()
    print("Q7613122Trigger - LightUpTriggerIn")
end

function Q7613122Trigger:TriggerOut()
    print("Q7613122Trigger - TriggerOut")
end

return Q7613122Trigger
