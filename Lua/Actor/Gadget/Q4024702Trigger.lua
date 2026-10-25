require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024702Trigger = class("Q4024702Trigger", GadgetActorProxy)
Q4024702Trigger.defaultAlias = "Q4024702Trigger"
local Q40247ClientConfig = require("Quest/Client/Q40247ClientConfig")

local this
local subIDs = Q40247ClientConfig.SubIDs
local datas = Q40247ClientConfig.Datas
local npcs = Q40247ClientConfig.Npcs
local points = Q40247ClientConfig.Points

function Q4024702Trigger:OnPostDataPrepare()
    print("Q4024702Trigger - OnPostDataPrepare")
    this = self
end

function Q4024702Trigger:OnPostComponentPrepare()
    print("Q4024702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40247)
end

function Q4024702Trigger:TriggerIn()
    print("Q4024702Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4024702})
    this:DestroySelf()
end

function Q4024702Trigger:PreTriggerIn()
    print("Q4024702Trigger - PreTriggerIn")
end

function Q4024702Trigger:LightUpTriggerIn()
    print("Q4024702Trigger - LightUpTriggerIn")
end

function Q4024702Trigger:TriggerOut()
    print("Q4024702Trigger - TriggerOut")
end

return Q4024702Trigger
