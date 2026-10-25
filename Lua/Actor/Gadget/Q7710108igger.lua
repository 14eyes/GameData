require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710108igger = class("Q7710108igger", GadgetActorProxy)
Q7710108igger.defaultAlias = "Q7710108igger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710108igger:OnPostDataPrepare()
    print("Q7710108igger - OnPostDataPrepare")
    this = self
end

function Q7710108igger:OnPostComponentPrepare()
    print("Q7710108igger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710108igger:TriggerIn()
    print("Q7710108igger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710108})
    this:DestroySelf()
end

function Q7710108igger:PreTriggerIn()
    print("Q7710108igger - PreTriggerIn")
end

function Q7710108igger:LightUpTriggerIn()
    print("Q7710108igger - LightUpTriggerIn")
end

function Q7710108igger:TriggerOut()
    print("Q7710108igger - TriggerOut")
end

return Q7710108igger
