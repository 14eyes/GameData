require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710710Trigger = class("Q7710710Trigger", GadgetActorProxy)
Q7710710Trigger.defaultAlias = "Q7710710Trigger"
local Q77107ClientConfig = require("Quest/Client/Q77107ClientConfig")

local this
local subIDs = Q77107ClientConfig.SubIDs
local datas = Q77107ClientConfig.Datas
local npcs = Q77107ClientConfig.Npcs
local points = Q77107ClientConfig.Points

function Q7710710Trigger:OnPostDataPrepare()
    print("Q7710710Trigger - OnPostDataPrepare")
    this = self
end

function Q7710710Trigger:OnPostComponentPrepare()
    print("Q7710710Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77107)
end

function Q7710710Trigger:TriggerIn()
    print("Q7710710Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710710})
    this:DestroySelf()
end

function Q7710710Trigger:PreTriggerIn()
    print("Q7710710Trigger - PreTriggerIn")
end

function Q7710710Trigger:LightUpTriggerIn()
    print("Q7710710Trigger - LightUpTriggerIn")
end

function Q7710710Trigger:TriggerOut()
    print("Q7710710Trigger - TriggerOut")
end

return Q7710710Trigger
