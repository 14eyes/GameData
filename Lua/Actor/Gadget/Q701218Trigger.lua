require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701218Trigger = class("Q701218Trigger", GadgetActorProxy)
Q701218Trigger.defaultAlias = "Q701218Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701218Trigger:OnPostDataPrepare()
    print("Q701218Trigger - OnPostDataPrepare")
    this = self
end

function Q701218Trigger:OnPostComponentPrepare()
    print("Q701218Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701218Trigger:TriggerIn()
    print("Q701218Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701218})
    this:DestroySelf()
end

function Q701218Trigger:PreTriggerIn()
    print("Q701218Trigger - PreTriggerIn")
end

function Q701218Trigger:LightUpTriggerIn()
    print("Q701218Trigger - LightUpTriggerIn")
end

function Q701218Trigger:TriggerOut()
    print("Q701218Trigger - TriggerOut")
end

return Q701218Trigger
