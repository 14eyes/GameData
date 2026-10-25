require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612504Trigger_LookAt = class("Q7612504Trigger_LookAt", GadgetActorProxy)
Q7612504Trigger_LookAt.defaultAlias = "Q7612504Trigger_LookAt"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612504Trigger_LookAt:OnPostDataPrepare()
    print("Q7612504Trigger_LookAt - OnPostDataPrepare")
    this = self
end

function Q7612504Trigger_LookAt:OnPostComponentPrepare()
    print("Q7612504Trigger_LookAt - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612504Trigger_LookAt:TriggerIn()
    print("Q7612504Trigger_LookAt - TriggerIn")
    actorMgr:GetActor("76125"):EnterSceneLookCamera({x = 2049.589, y = 201.308, z = 11074.44}, 0, 0.5, false, false)
    this:DestroySelf()
end

function Q7612504Trigger_LookAt:PreTriggerIn()
    print("Q7612504Trigger_LookAt - PreTriggerIn")
end

function Q7612504Trigger_LookAt:LightUpTriggerIn()
    print("Q7612504Trigger_LookAt - LightUpTriggerIn")
end

function Q7612504Trigger_LookAt:TriggerOut()
    print("Q7612504Trigger_LookAt - TriggerOut")
end

return Q7612504Trigger_LookAt
