require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7723702Trigger = class("Q7723702Trigger", GadgetActorProxy)
Q7723702Trigger.defaultAlias = "Q7723702Trigger"
local Q77237ClientConfig = require("Quest/Client/Q77237ClientConfig")

local this
local subIDs = Q77237ClientConfig.SubIDs
local datas = Q77237ClientConfig.Datas
local npcs = Q77237ClientConfig.Npcs
local points = Q77237ClientConfig.Points

function Q7723702Trigger:OnPostDataPrepare()
    print("Q7723702Trigger - OnPostDataPrepare")
    this = self
end

function Q7723702Trigger:OnPostComponentPrepare()
    print("Q7723702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77237)
end

function Q7723702Trigger:TriggerIn()
    print("Q7723702Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7723702})
    this:DestroySelf()
end

function Q7723702Trigger:PreTriggerIn()
    print("Q7723702Trigger - PreTriggerIn")
end

function Q7723702Trigger:LightUpTriggerIn()
    print("Q7723702Trigger - LightUpTriggerIn")
end

function Q7723702Trigger:TriggerOut()
    print("Q7723702Trigger - TriggerOut")
end

return Q7723702Trigger
