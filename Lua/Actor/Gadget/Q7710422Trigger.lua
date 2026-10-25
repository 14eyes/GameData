require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710422Trigger = class("Q7710422Trigger", GadgetActorProxy)
Q7710422Trigger.defaultAlias = "Q7710422Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710422Trigger:OnPostDataPrepare()
    print("Q7710422Trigger - OnPostDataPrepare")
    this = self
end

function Q7710422Trigger:OnPostComponentPrepare()
    print("Q7710422Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(2, 50, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710422Trigger:TriggerIn()
    print("Q7710422Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710422})
    this:DestroySelf()
end

function Q7710422Trigger:PreTriggerIn()
    print("Q7710422Trigger - PreTriggerIn")
end

function Q7710422Trigger:LightUpTriggerIn()
    print("Q7710422Trigger - LightUpTriggerIn")
end

function Q7710422Trigger:TriggerOut()
    print("Q7710422Trigger - TriggerOut")
end

return Q7710422Trigger
