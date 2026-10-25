require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918507Trigger = class("Q1918507Trigger", GadgetActorProxy)
Q1918507Trigger.defaultAlias = "Q1918507Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918507Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918507Trigger] OnPostDataPrepare")
    this = self
end

function Q1918507Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918507Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918507Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918507Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19185")
        actor:CreateQuestNpcById(1918507, npcs.Npc518Data.id, 0)
        actor:RequestInteraction(npcs.Npc518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918507Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918507Trigger] PreTriggerIn")
end

function Q1918507Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918507Trigger] LightUpTriggerIn")
end

function Q1918507Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918507Trigger] TriggerOut")
end

return Q1918507Trigger
