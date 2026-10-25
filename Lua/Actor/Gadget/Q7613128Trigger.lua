require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613128Trigger = class("Q7613128Trigger", GadgetActorProxy)
Q7613128Trigger.defaultAlias = "Q7613128Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613128Trigger:OnPostDataPrepare()
    print("Q7613128Trigger - OnPostDataPrepare")
    this = self
end

function Q7613128Trigger:OnPostComponentPrepare()
    print("Q7613128Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613128Trigger:TriggerIn()
    print("Q7613128Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613128})
    this:DestroySelf()
end

function Q7613128Trigger:PreTriggerIn()
    print("Q7613128Trigger - PreTriggerIn")
end

function Q7613128Trigger:LightUpTriggerIn()
    print("Q7613128Trigger - LightUpTriggerIn")
end

function Q7613128Trigger:TriggerOut()
    print("Q7613128Trigger - TriggerOut")
end

return Q7613128Trigger
