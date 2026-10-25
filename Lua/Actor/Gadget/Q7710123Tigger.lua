require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710123Tigger = class("Q7710123Tigger", GadgetActorProxy)
Q7710123Tigger.defaultAlias = "Q7710123Tigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710123Tigger:OnPostDataPrepare()
    print("Q7710123Tigger - OnPostDataPrepare")
    this = self
end

function Q7710123Tigger:OnPostComponentPrepare()
    print("Q7710123Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(54, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710123Tigger:TriggerIn()
    print("Q7710123Tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710123)
    this:DestroySelf()
end

function Q7710123Tigger:PreTriggerIn()
    print("Q7710123Tigger - PreTriggerIn")
end

function Q7710123Tigger:LightUpTriggerIn()
    print("Q7710123Tigger - LightUpTriggerIn")
end

function Q7710123Tigger:TriggerOut()
    print("Q7710123Tigger - TriggerOut")
end

return Q7710123Tigger
