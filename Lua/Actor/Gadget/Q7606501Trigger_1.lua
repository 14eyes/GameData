require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606501Trigger_1 = class("Q7606501Trigger_1", GadgetActorProxy)
Q7606501Trigger_1.defaultAlias = "Q7606501Trigger_1"
local Q76065ClientConfig = require("Quest/Client/Q76065ClientConfig")

local this
local subIDs = Q76065ClientConfig.SubIDs
local npcs = Q76065ClientConfig.Npcs
local points = Q76065ClientConfig.Points

function Q7606501Trigger_1:OnPostDataPrepare()
    print("Q7606501Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7606501Trigger_1:OnPostComponentPrepare()
    print("Q7606501Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(28.481037, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76065)
end

function Q7606501Trigger_1:TriggerIn()
    print("Q7606501Trigger_1 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7606501})
    this:DestroySelf()
end

function Q7606501Trigger_1:PreTriggerIn()
    print("Q7606501Trigger_1 - PreTriggerIn")
end

function Q7606501Trigger_1:LightUpTriggerIn()
    print("Q7606501Trigger_1 - LightUpTriggerIn")
end

function Q7606501Trigger_1:TriggerOut()
    print("Q7606501Trigger_1 - TriggerOut")
end

return Q7606501Trigger_1
