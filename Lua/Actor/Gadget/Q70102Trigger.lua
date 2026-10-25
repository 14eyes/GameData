require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70102Trigger = class("Q70102Trigger", GadgetActorProxy)
Q70102Trigger.defaultAlias = "Q70102Trigger"
local Q70102ClientConfig = require("Quest/Client/Q70102ClientConfig")

local this
local subIDs = Q70102ClientConfig.SubIDs
local npcs = Q70102ClientConfig.Npcs
local datas = Q70102ClientConfig.Datas

function Q70102Trigger:OnPostDataPrepare()
    print("[MainId: 70102][Trigger: Q70102Trigger] OnPostDataPrepare")
    this = self
end

function Q70102Trigger:OnPostComponentPrepare()
    print("[MainId: 70102][Trigger: Q70102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(24, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q70102Trigger:TriggerIn()
    print("[MainId: 70102][Trigger: Q70102Trigger] TriggerIn")
    actorMgr:GetActor("70102"):EnterSceneLookCamera({x = 1296.0, y = 279.0, z = -805.0}, 1, 2, false, false)
    this:DestroySelf()
end

function Q70102Trigger:PreTriggerIn()
    print("[MainId: 70102][Trigger: Q70102Trigger] PreTriggerIn")
end

function Q70102Trigger:LightUpTriggerIn()
    print("[MainId: 70102][Trigger: Q70102Trigger] LightUpTriggerIn")
end

function Q70102Trigger:TriggerOut()
    print("[MainId: 70102][Trigger: Q70102Trigger] TriggerOut")
end

return Q70102Trigger
