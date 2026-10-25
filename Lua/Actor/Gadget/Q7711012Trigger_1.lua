require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711012Trigger_1 = class("Q7711012Trigger_1", GadgetActorProxy)
Q7711012Trigger_1.defaultAlias = "Q7711012Trigger_1"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711012Trigger_1:OnPostDataPrepare()
    print("Q7711012Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7711012Trigger_1:OnPostComponentPrepare()
    print("Q7711012Trigger_1 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(3, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711012Trigger_1:TriggerIn()
    print("Q7711012Trigger_1 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7711012})
    this:DestroySelf()
end

function Q7711012Trigger_1:PreTriggerIn()
    print("Q7711012Trigger_1 - PreTriggerIn")
end

function Q7711012Trigger_1:LightUpTriggerIn()
    print("Q7711012Trigger_1 - LightUpTriggerIn")
end

function Q7711012Trigger_1:TriggerOut()
    print("Q7711012Trigger_1 - TriggerOut")
end

return Q7711012Trigger_1
