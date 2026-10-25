require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918517Trigger = class("Q1918517Trigger", GadgetActorProxy)
Q1918517Trigger.defaultAlias = "Q1918517Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918517Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918517Trigger] OnPostDataPrepare")
    this = self
end

function Q1918517Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918517Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918517Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918517Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19185")
        actor:CreateQuestNpcById(1918517, npcs.Npc13937Data.id, 0)
        actor:RequestInteraction(npcs.Npc13937Data.alias, "", true)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1918517Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918517Trigger] PreTriggerIn")
end

function Q1918517Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918517Trigger] LightUpTriggerIn")
end

function Q1918517Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918517Trigger] TriggerOut")
end

return Q1918517Trigger
