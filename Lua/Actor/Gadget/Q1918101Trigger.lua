require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918101Trigger = class("Q1918101Trigger", GadgetActorProxy)
Q1918101Trigger.defaultAlias = "Q1918101Trigger"
local Q19181ClientConfig = require("Quest/Client/Q19181ClientConfig")

local this
local subIDs = Q19181ClientConfig.SubIDs
local points = Q19181ClientConfig.Points

function Q1918101Trigger:OnPostDataPrepare()
    print("[MainId: 19181][Trigger: Q1918101Trigger] OnPostDataPrepare")
    this = self
end

function Q1918101Trigger:OnPostComponentPrepare()
    print("[MainId: 19181][Trigger: Q1918101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918101Trigger:TriggerIn()
    print("[MainId: 19181][Trigger: Q1918101Trigger] TriggerIn")
    actorMgr:GetActor("19181"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19181")
        actor:SpawnGadgetById(1918101, Npcs.Npc518Data.id, 0)
        actor:RequestInteraction(Npcs.Npc518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918101Trigger:PreTriggerIn()
    print("[MainId: 19181][Trigger: Q1918101Trigger] PreTriggerIn")
end

function Q1918101Trigger:LightUpTriggerIn()
    print("[MainId: 19181][Trigger: Q1918101Trigger] LightUpTriggerIn")
end

function Q1918101Trigger:TriggerOut()
    print("[MainId: 19181][Trigger: Q1918101Trigger] TriggerOut")
end

return Q1918101Trigger
