require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600334Tigger = class("Q7600334Tigger", GadgetActorProxy)
Q7600334Tigger.defaultAlias = "Q7600334Tigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600334Tigger:OnPostDataPrepare()
    print("Q7600334Tigger - OnPostDataPrepare")
    this = self
end

function Q7600334Tigger:OnPostComponentPrepare()
    print("Q7600334Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600334Tigger:TriggerIn()
    print("Q7600334Tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600334)
    this:DestroySelf()
end

function Q7600334Tigger:PreTriggerIn()
    print("Q7600334Tigger - PreTriggerIn")
end

function Q7600334Tigger:LightUpTriggerIn()
    print("Q7600334Tigger - LightUpTriggerIn")
end

function Q7600334Tigger:TriggerOut()
    print("Q7600334Tigger - TriggerOut")
end

return Q7600334Tigger
