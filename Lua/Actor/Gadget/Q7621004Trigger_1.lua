require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621004Trigger_1 = class("Q7621004Trigger_1", GadgetActorProxy)
Q7621004Trigger_1.defaultAlias = "Q7621004Trigger_1"
local Q76210ClientConfig = require("Quest/Client/Q76210ClientConfig")

local this
local subIDs = Q76210ClientConfig.SubIDs
local npcs = Q76210ClientConfig.Npcs
local points = Q76210ClientConfig.Points

function Q7621004Trigger_1:OnPostDataPrepare()
    print("Q7621004Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7621004Trigger_1:OnPostComponentPrepare()
    print("Q7621004Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76210)
end

function Q7621004Trigger_1:TriggerIn()
    print("Q7621004Trigger_1 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7621004})
    this:DestroySelf()
end

function Q7621004Trigger_1:PreTriggerIn()
    print("Q7621004Trigger_1 - PreTriggerIn")
end

function Q7621004Trigger_1:LightUpTriggerIn()
    print("Q7621004Trigger_1 - LightUpTriggerIn")
end

function Q7621004Trigger_1:TriggerOut()
    print("Q7621004Trigger_1 - TriggerOut")
end

return Q7621004Trigger_1
