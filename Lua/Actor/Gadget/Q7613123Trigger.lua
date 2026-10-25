require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613123Trigger = class("Q7613123Trigger", GadgetActorProxy)
Q7613123Trigger.defaultAlias = "Q7613123Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613123Trigger:OnPostDataPrepare()
    print("Q7613123Trigger - OnPostDataPrepare")
    this = self
end

function Q7613123Trigger:OnPostComponentPrepare()
    print("Q7613123Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 20, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613123Trigger:TriggerIn()
    print("Q7613123Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613123})
    this:DestroySelf()
end

function Q7613123Trigger:PreTriggerIn()
    print("Q7613123Trigger - PreTriggerIn")
end

function Q7613123Trigger:LightUpTriggerIn()
    print("Q7613123Trigger - LightUpTriggerIn")
end

function Q7613123Trigger:TriggerOut()
    print("Q7613123Trigger - TriggerOut")
end

return Q7613123Trigger
