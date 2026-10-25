require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302923Trigger = class("Q302923Trigger", GadgetActorProxy)
Q302923Trigger.defaultAlias = "Q302923Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302923Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302923Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302923Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):EnterSceneLookCamera({x = 0.3, y = 13.8, z = -23.0}, 2, 2, false, false)
    this:DestroySelf()
end

function Q302923Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302923Trigger
