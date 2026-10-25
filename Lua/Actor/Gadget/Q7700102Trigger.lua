require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700102Trigger = class("Q7700102Trigger", GadgetActorProxy)
Q7700102Trigger.defaultAlias = "Q7700102Trigger"
local Q77001ClientConfig = require("Quest/Client/Q77001ClientConfig")

local this
local subIDs = Q77001ClientConfig.SubIDs
local datas = Q77001ClientConfig.Datas
local npcs = Q77001ClientConfig.Npcs
local points = Q77001ClientConfig.Points

function Q7700102Trigger:OnPostDataPrepare()
    print("Q7700102Trigger - OnPostDataPrepare")
    this = self
end

function Q7700102Trigger:OnPostComponentPrepare()
    print("Q7700102Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77001)
end

function Q7700102Trigger:TriggerIn()
    print("Q7700102Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700102})
    this:DestroySelf()
end

function Q7700102Trigger:PreTriggerIn()
    print("Q7700102Trigger - PreTriggerIn")
end

function Q7700102Trigger:LightUpTriggerIn()
    print("Q7700102Trigger - LightUpTriggerIn")
end

function Q7700102Trigger:TriggerOut()
    print("Q7700102Trigger - TriggerOut")
end

return Q7700102Trigger
