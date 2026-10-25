require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7724011igger = class("Q7724011igger", GadgetActorProxy)
Q7724011igger.defaultAlias = "Q7724011igger"
local Q77240ClientConfig = require("Quest/Client/Q77240ClientConfig")

local this
local subIDs = Q77240ClientConfig.SubIDs
local npcs = Q77240ClientConfig.Npcs
local points = Q77240ClientConfig.Points

function Q7724011igger:OnPostDataPrepare()
    print("Q7724011igger - OnPostDataPrepare")
    this = self
end

function Q7724011igger:OnPostComponentPrepare()
    print("Q7724011igger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77240)
end

function Q7724011igger:TriggerIn()
    print("Q7724011igger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7724011})
    this:DestroySelf()
end

function Q7724011igger:PreTriggerIn()
    print("Q7724011igger - PreTriggerIn")
end

function Q7724011igger:LightUpTriggerIn()
    print("Q7724011igger - LightUpTriggerIn")
end

function Q7724011igger:TriggerOut()
    print("Q7724011igger - TriggerOut")
end

return Q7724011igger
