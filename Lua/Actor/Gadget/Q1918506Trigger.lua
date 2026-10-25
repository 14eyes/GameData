require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918506Trigger = class("Q1918506Trigger", GadgetActorProxy)
Q1918506Trigger.defaultAlias = "Q1918506Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918506Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918506Trigger] OnPostDataPrepare")
    this = self
end

function Q1918506Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918506Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918506Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918506Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19185"):RequestInteraction(npcs.Npc1071Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918506Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918506Trigger] PreTriggerIn")
end

function Q1918506Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918506Trigger] LightUpTriggerIn")
end

function Q1918506Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918506Trigger] TriggerOut")
end

return Q1918506Trigger
