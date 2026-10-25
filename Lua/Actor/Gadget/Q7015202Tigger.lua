require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7015202Tigger = class("Q7015202Tigger", GadgetActorProxy)
Q7015202Tigger.defaultAlias = "Q7015202Tigger"
local Q70152ClientConfig = require("Quest/Client/Q70152ClientConfig")

local this
local subIDs = Q70152ClientConfig.SubIDs
local npcs = Q70152ClientConfig.Npcs
local points = Q70152ClientConfig.Points

function Q7015202Tigger:OnPostDataPrepare()
    print("Q7015202Tigger - OnPostDataPrepare")
    this = self
end

function Q7015202Tigger:OnPostComponentPrepare()
    print("Q7015202Tigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(140, 48, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70152)
end

function Q7015202Tigger:TriggerIn()
    print("Q7015202Tigger - TriggerIn")
end

function Q7015202Tigger:PreTriggerIn()
    print("Q7015202Tigger - PreTriggerIn")
end

function Q7015202Tigger:LightUpTriggerIn()
    print("Q7015202Tigger - LightUpTriggerIn")
end

function Q7015202Tigger:TriggerOut()
    print("Q7015202Tigger - TriggerOut")
    actorUtils.FinishQuestWithParam({true}, {7015202})
    this:DestroySelf()
end

return Q7015202Tigger
