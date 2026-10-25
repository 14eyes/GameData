require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024525Trigger = class("Q4024525Trigger", GadgetActorProxy)
Q4024525Trigger.defaultAlias = "Q4024525Trigger"
local Q40245ClientConfig = require("Quest/Client/Q40245ClientConfig")

local this
local subIDs = Q40245ClientConfig.SubIDs
local datas = Q40245ClientConfig.Datas
local npcs = Q40245ClientConfig.Npcs
local points = Q40245ClientConfig.Points

function Q4024525Trigger:OnPostDataPrepare()
    print("Q4024525Trigger - OnPostDataPrepare")
    this = self
end

function Q4024525Trigger:OnPostComponentPrepare()
    print("Q4024525Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40245)
end

function Q4024525Trigger:TriggerIn()
    print("Q4024525Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {4024525})
    this:DestroySelf()
end

function Q4024525Trigger:PreTriggerIn()
    print("Q4024525Trigger - PreTriggerIn")
end

function Q4024525Trigger:LightUpTriggerIn()
    print("Q4024525Trigger - LightUpTriggerIn")
end

function Q4024525Trigger:TriggerOut()
    print("Q4024525Trigger - TriggerOut")
end

return Q4024525Trigger
