require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918515Trigger = class("Q1918515Trigger", GadgetActorProxy)
Q1918515Trigger.defaultAlias = "Q1918515Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918515Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918515Trigger] OnPostDataPrepare")
    this = self
end

function Q1918515Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918515Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918515Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918515Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19185")
        actor:CreateQuestNpcById(1918515, npcs.Npc518Data.id, 0)
        actor:RequestInteraction(npcs.Npc518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918515Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918515Trigger] PreTriggerIn")
end

function Q1918515Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918515Trigger] LightUpTriggerIn")
end

function Q1918515Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918515Trigger] TriggerOut")
end

return Q1918515Trigger
