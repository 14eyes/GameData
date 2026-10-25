require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710702Trigger = class("Q7710702Trigger", GadgetActorProxy)
Q7710702Trigger.defaultAlias = "Q7710702Trigger"
local Q77107ClientConfig = require("Quest/Client/Q77107ClientConfig")

local this
local subIDs = Q77107ClientConfig.SubIDs
local datas = Q77107ClientConfig.Datas
local npcs = Q77107ClientConfig.Npcs
local points = Q77107ClientConfig.Points

function Q7710702Trigger:OnPostDataPrepare()
    print("Q7710702Trigger - OnPostDataPrepare")
    this = self
end

function Q7710702Trigger:OnPostComponentPrepare()
    print("Q7710702Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 15, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77107)
end

function Q7710702Trigger:TriggerIn()
    print("Q7710702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710702)
    this:DestroySelf()
end

function Q7710702Trigger:PreTriggerIn()
    print("Q7710702Trigger - PreTriggerIn")
end

function Q7710702Trigger:LightUpTriggerIn()
    print("Q7710702Trigger - LightUpTriggerIn")
end

function Q7710702Trigger:TriggerOut()
    print("Q7710702Trigger - TriggerOut")
end

return Q7710702Trigger
