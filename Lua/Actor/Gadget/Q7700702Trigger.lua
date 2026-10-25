require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700702Trigger = class("Q7700702Trigger", GadgetActorProxy)
Q7700702Trigger.defaultAlias = "Q7700702Trigger"
local Q77007ClientConfig = require("Quest/Client/Q77007ClientConfig")

local this
local subIDs = Q77007ClientConfig.SubIDs
local datas = Q77007ClientConfig.Datas
local npcs = Q77007ClientConfig.Npcs
local points = Q77007ClientConfig.Points

function Q7700702Trigger:OnPostDataPrepare()
    print("Q7700702Trigger - OnPostDataPrepare")
    this = self
end

function Q7700702Trigger:OnPostComponentPrepare()
    print("Q7700702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77007)
end

function Q7700702Trigger:TriggerIn()
    print("Q7700702Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700702})
    this:DestroySelf()
end

function Q7700702Trigger:PreTriggerIn()
    print("Q7700702Trigger - PreTriggerIn")
end

function Q7700702Trigger:LightUpTriggerIn()
    print("Q7700702Trigger - LightUpTriggerIn")
end

function Q7700702Trigger:TriggerOut()
    print("Q7700702Trigger - TriggerOut")
end

return Q7700702Trigger
