require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710508Trigger = class("Q7710508Trigger", GadgetActorProxy)
Q7710508Trigger.defaultAlias = "Q7710508Trigger"
local Q77105ClientConfig = require("Quest/Client/Q77105ClientConfig")

local this
local subIDs = Q77105ClientConfig.SubIDs
local datas = Q77105ClientConfig.Datas
local npcs = Q77105ClientConfig.Npcs
local points = Q77105ClientConfig.Points

function Q7710508Trigger:OnPostDataPrepare()
    print("Q7710508Trigger - OnPostDataPrepare")
    this = self
end

function Q7710508Trigger:OnPostComponentPrepare()
    print("Q7710508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77105)
end

function Q7710508Trigger:TriggerIn()
    print("Q7710508Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710508})
    this:DestroySelf()
end

function Q7710508Trigger:PreTriggerIn()
    print("Q7710508Trigger - PreTriggerIn")
end

function Q7710508Trigger:LightUpTriggerIn()
    print("Q7710508Trigger - LightUpTriggerIn")
end

function Q7710508Trigger:TriggerOut()
    print("Q7710508Trigger - TriggerOut")
end

return Q7710508Trigger
