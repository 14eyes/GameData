require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710029Trigger = class("Q7710029Trigger", GadgetActorProxy)
Q7710029Trigger.defaultAlias = "Q7710029Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710029Trigger:OnPostDataPrepare()
    print("Q7710029Trigger - OnPostDataPrepare")
    this = self
end

function Q7710029Trigger:OnPostComponentPrepare()
    print("Q7710029Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710029Trigger:TriggerIn()
    print("Q7710029Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710029})
    this:DestroySelf()
end

function Q7710029Trigger:PreTriggerIn()
    print("Q7710029Trigger - PreTriggerIn")
end

function Q7710029Trigger:LightUpTriggerIn()
    print("Q7710029Trigger - LightUpTriggerIn")
end

function Q7710029Trigger:TriggerOut()
    print("Q7710029Trigger - TriggerOut")
end

return Q7710029Trigger
