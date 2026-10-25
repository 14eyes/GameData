require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918513Trigger = class("Q1918513Trigger", GadgetActorProxy)
Q1918513Trigger.defaultAlias = "Q1918513Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918513Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918513Trigger] OnPostDataPrepare")
    this = self
end

function Q1918513Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918513Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918513Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918513Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19185")
        actor:CreateQuestNpcById(1918513, npcs.Npc518Data.id, 0)
        actor:RequestInteraction(npcs.Npc518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918513Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918513Trigger] PreTriggerIn")
end

function Q1918513Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918513Trigger] LightUpTriggerIn")
end

function Q1918513Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918513Trigger] TriggerOut")
end

return Q1918513Trigger
