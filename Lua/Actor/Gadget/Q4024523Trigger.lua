require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024523Trigger = class("Q4024523Trigger", GadgetActorProxy)
Q4024523Trigger.defaultAlias = "Q4024523Trigger"
local Q40245ClientConfig = require("Quest/Client/Q40245ClientConfig")

local this
local subIDs = Q40245ClientConfig.SubIDs
local datas = Q40245ClientConfig.Datas
local npcs = Q40245ClientConfig.Npcs
local points = Q40245ClientConfig.Points

function Q4024523Trigger:OnPostDataPrepare()
    print("Q4024523Trigger - OnPostDataPrepare")
    this = self
end

function Q4024523Trigger:OnPostComponentPrepare()
    print("Q4024523Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40245)
end

function Q4024523Trigger:TriggerIn()
    print("Q4024523Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4024523})
    this:DestroySelf()
end

function Q4024523Trigger:PreTriggerIn()
    print("Q4024523Trigger - PreTriggerIn")
end

function Q4024523Trigger:LightUpTriggerIn()
    print("Q4024523Trigger - LightUpTriggerIn")
end

function Q4024523Trigger:TriggerOut()
    print("Q4024523Trigger - TriggerOut")
end

return Q4024523Trigger
