require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714215Tigger = class("Q7714215Tigger", GadgetActorProxy)
Q7714215Tigger.defaultAlias = "Q7714215Tigger"
local Q77142ClientConfig = require("Quest/Client/Q77142ClientConfig")

local this
local subIDs = Q77142ClientConfig.SubIDs
local datas = Q77142ClientConfig.Datas
local npcs = Q77142ClientConfig.Npcs
local points = Q77142ClientConfig.Points

function Q7714215Tigger:OnPostDataPrepare()
    print("Q7714215Tigger - OnPostDataPrepare")
    this = self
end

function Q7714215Tigger:OnPostComponentPrepare()
    print("Q7714215Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77142)
end

function Q7714215Tigger:TriggerIn()
    print("Q7714215Tigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7714215})
    this:DestroySelf()
end

function Q7714215Tigger:PreTriggerIn()
    print("Q7714215Tigger - PreTriggerIn")
end

function Q7714215Tigger:LightUpTriggerIn()
    print("Q7714215Tigger - LightUpTriggerIn")
end

function Q7714215Tigger:TriggerOut()
    print("Q7714215Tigger - TriggerOut")
end

return Q7714215Tigger
