require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918521Trigger = class("Q1918521Trigger", GadgetActorProxy)
Q1918521Trigger.defaultAlias = "Q1918521Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918521Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918521Trigger] OnPostDataPrepare")
    this = self
end

function Q1918521Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918521Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 9, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918521Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918521Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19185")
        actor:RequestInteraction(npcs.Npc14028Data.alias, "", true)
        actor:CancelStoryByQuest(121918521)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1918521Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918521Trigger] PreTriggerIn")
end

function Q1918521Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918521Trigger] LightUpTriggerIn")
end

function Q1918521Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918521Trigger] TriggerOut")
end

return Q1918521Trigger
