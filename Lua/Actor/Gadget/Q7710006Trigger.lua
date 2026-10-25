require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710006Trigger = class("Q7710006Trigger", GadgetActorProxy)
Q7710006Trigger.defaultAlias = "Q7710006Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710006Trigger:OnPostDataPrepare()
    print("Q7710006Trigger - OnPostDataPrepare")
    this = self
end

function Q7710006Trigger:OnPostComponentPrepare()
    print("Q7710006Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710006Trigger:TriggerIn()
    print("Q7710006Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710006)
    this:DestroySelf()
end

function Q7710006Trigger:PreTriggerIn()
    print("Q7710006Trigger - PreTriggerIn")
end

function Q7710006Trigger:LightUpTriggerIn()
    print("Q7710006Trigger - LightUpTriggerIn")
end

function Q7710006Trigger:TriggerOut()
    print("Q7710006Trigger - TriggerOut")
end

return Q7710006Trigger
