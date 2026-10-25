require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710715Trigger = class("Q7710715Trigger", GadgetActorProxy)
Q7710715Trigger.defaultAlias = "Q7710715Trigger"
local Q77107ClientConfig = require("Quest/Client/Q77107ClientConfig")

local this
local subIDs = Q77107ClientConfig.SubIDs
local datas = Q77107ClientConfig.Datas
local npcs = Q77107ClientConfig.Npcs
local points = Q77107ClientConfig.Points

function Q7710715Trigger:OnPostDataPrepare()
    print("Q7710715Trigger - OnPostDataPrepare")
    this = self
end

function Q7710715Trigger:OnPostComponentPrepare()
    print("Q7710715Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 20, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77107)
end

function Q7710715Trigger:TriggerIn()
    print("Q7710715Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710715})
    this:DestroySelf()
end

function Q7710715Trigger:PreTriggerIn()
    print("Q7710715Trigger - PreTriggerIn")
end

function Q7710715Trigger:LightUpTriggerIn()
    print("Q7710715Trigger - LightUpTriggerIn")
end

function Q7710715Trigger:TriggerOut()
    print("Q7710715Trigger - TriggerOut")
end

return Q7710715Trigger
