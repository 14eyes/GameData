require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918522Trigger = class("Q1918522Trigger", GadgetActorProxy)
Q1918522Trigger.defaultAlias = "Q1918522Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918522Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918522Trigger] OnPostDataPrepare")
    this = self
end

function Q1918522Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918522Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 10, 6, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918522Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918522Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19185"):RequestInteraction(npcs.Npc14028Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918522Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918522Trigger] PreTriggerIn")
end

function Q1918522Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918522Trigger] LightUpTriggerIn")
end

function Q1918522Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918522Trigger] TriggerOut")
end

return Q1918522Trigger
