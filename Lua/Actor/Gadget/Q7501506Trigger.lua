require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501506Trigger = class("Q7501506Trigger", GadgetActorProxy)
Q7501506Trigger.defaultAlias = "Q7501506Trigger"
local Q75015ClientConfig = require("Quest/Client/Q75015ClientConfig")

local this
local subIDs = Q75015ClientConfig.SubIDs
local npcs = Q75015ClientConfig.Npcs
local datas = Q75015ClientConfig.Datas

function Quest75015.NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4, arg5)
    actorMgr:GetActor("75015"):CreateQuestNpcWithTrigger("Q" .. arg3 .. "N" .. arg2 .. "Trigger", arg3, arg2, arg4, arg5, 2)
end

function Q7501506Trigger:OnPostDataPrepare()
    print("[MainId: 75015][Trigger: Q7501506Trigger] OnPostDataPrepare")
    this = self
end

function Q7501506Trigger:OnPostComponentPrepare()
    print("[MainId: 75015][Trigger: Q7501506Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12.04181, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75015)
end

function Q7501506Trigger:TriggerIn()
    print("[MainId: 75015][Trigger: Q7501506Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7501506Trigger:PreTriggerIn()
    print("[MainId: 75015][Trigger: Q7501506Trigger] PreTriggerIn")
end

function Q7501506Trigger:LightUpTriggerIn()
    print("[MainId: 75015][Trigger: Q7501506Trigger] LightUpTriggerIn")
end

function Q7501506Trigger:TriggerOut()
    print("[MainId: 75015][Trigger: Q7501506Trigger] TriggerOut")
end

return Q7501506Trigger
