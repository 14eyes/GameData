require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503503_guide = class("Q7503503_guide", GadgetActorProxy)
Q7503503_guide.defaultAlias = "Q7503503_guide"
local Q75035ClientConfig = require("Quest/Client/Q75035ClientConfig")

local this
local subIDs = Q75035ClientConfig.SubIDs
local npcs = Q75035ClientConfig.Npcs
local points = Q75035ClientConfig.Points

function Q7503503_guide:OnPostDataPrepare()
    print("Q7503503_guide - OnPostDataPrepare")
    this = self
end

function Q7503503_guide:OnPostComponentPrepare()
    print("Q7503503_guide - OnPostComponentPrepare")
    this:AddComponentTrigger(7.085938, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75035)
end

function Q7503503_guide:TriggerIn()
    print("Q7503503_guide - TriggerIn")
    this:DestroySelf()
end

function Q7503503_guide:PreTriggerIn()
    print("Q7503503_guide - PreTriggerIn")
end

function Q7503503_guide:LightUpTriggerIn()
    print("Q7503503_guide - LightUpTriggerIn")
end

function Q7503503_guide:TriggerOut()
    print("Q7503503_guide - TriggerOut")
end

return Q7503503_guide
