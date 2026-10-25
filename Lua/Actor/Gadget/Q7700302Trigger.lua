require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700302Trigger = class("Q7700302Trigger", GadgetActorProxy)
Q7700302Trigger.defaultAlias = "Q7700302Trigger"
local Q77003ClientConfig = require("Quest/Client/Q77003ClientConfig")

local this
local subIDs = Q77003ClientConfig.SubIDs
local datas = Q77003ClientConfig.Datas
local npcs = Q77003ClientConfig.Npcs
local points = Q77003ClientConfig.Points

function Q7700302Trigger:OnPostDataPrepare()
    print("Q7700302Trigger - OnPostDataPrepare")
    this = self
end

function Q7700302Trigger:OnPostComponentPrepare()
    print("Q7700302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77003)
end

function Q7700302Trigger:TriggerIn()
    print("Q7700302Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700302})
    this:DestroySelf()
end

function Q7700302Trigger:PreTriggerIn()
    print("Q7700302Trigger - PreTriggerIn")
end

function Q7700302Trigger:LightUpTriggerIn()
    print("Q7700302Trigger - LightUpTriggerIn")
end

function Q7700302Trigger:TriggerOut()
    print("Q7700302Trigger - TriggerOut")
end

return Q7700302Trigger
