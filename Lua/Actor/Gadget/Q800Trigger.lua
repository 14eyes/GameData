require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800Trigger = class("Q800Trigger", GadgetActorProxy)
Q800Trigger.defaultAlias = "Q800Trigger"
local Q800ClientConfig = require("Quest/Client/Q800ClientConfig")

local this
local subIDs = Q800ClientConfig.SubIDs
local npcs = Q800ClientConfig.Npcs
local datas = Q800ClientConfig.Datas

function Q800Trigger:OnPostDataPrepare()
    print("[MainId: 800][Trigger: Q800Trigger] OnPostDataPrepare")
    this = self
end

function Q800Trigger:OnPostComponentPrepare()
    print("[MainId: 800][Trigger: Q800Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q800Trigger:TriggerIn()
    print("[MainId: 800][Trigger: Q800Trigger] TriggerIn")
    this:DestroySelf()
    local actor = actorMgr:GetActor("800")
    actor:ShowTutorialDialog(103)
    actor:RequestInteraction(npcs.AmborData.alias)
end

function Q800Trigger:PreTriggerIn()
    print("[MainId: 800][Trigger: Q800Trigger] PreTriggerIn")
end

function Q800Trigger:LightUpTriggerIn()
    print("[MainId: 800][Trigger: Q800Trigger] LightUpTriggerIn")
end

function Q800Trigger:TriggerOut()
    print("[MainId: 800][Trigger: Q800Trigger] TriggerOut")
end

return Q800Trigger
