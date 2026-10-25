require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503501Trigger_1 = class("Q503501Trigger_1", GadgetActorProxy)
Q503501Trigger_1.defaultAlias = "Q503501Trigger_1"
local Q5035ClientConfig = require("Quest/Client/Q5035ClientConfig")

local this
local subIDs = Q5035ClientConfig.SubIDs
local points = Q5035ClientConfig.Points

function Q503501Trigger_1:OnPostDataPrepare()
    print("Q503501Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q503501Trigger_1:OnPostComponentPrepare()
    print("Q503501Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5035)
end

function Q503501Trigger_1:TriggerIn()
    print("Q503501Trigger_1 - TriggerIn")
end

function Q503501Trigger_1:PreTriggerIn()
    print("Q503501Trigger_1 - PreTriggerIn")
end

function Q503501Trigger_1:LightUpTriggerIn()
    print("Q503501Trigger_1 - LightUpTriggerIn")
end

function Q503501Trigger_1:TriggerOut()
    print("Q503501Trigger_1 - TriggerOut")
    actorUtils.FinishQuestID(false, 503501)
    this:DestroySelf()
end

return Q503501Trigger_1
