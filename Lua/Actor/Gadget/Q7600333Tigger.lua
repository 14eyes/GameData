require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600333Tigger = class("Q7600333Tigger", GadgetActorProxy)
Q7600333Tigger.defaultAlias = "Q7600333Tigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600333Tigger:OnPostDataPrepare()
    print("Q7600333Tigger - OnPostDataPrepare")
    this = self
end

function Q7600333Tigger:OnPostComponentPrepare()
    print("Q7600333Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600333Tigger:TriggerIn()
    print("Q7600333Tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600333)
    this:DestroySelf()
end

function Q7600333Tigger:PreTriggerIn()
    print("Q7600333Tigger - PreTriggerIn")
end

function Q7600333Tigger:LightUpTriggerIn()
    print("Q7600333Tigger - LightUpTriggerIn")
end

function Q7600333Tigger:TriggerOut()
    print("Q7600333Tigger - TriggerOut")
end

return Q7600333Tigger
