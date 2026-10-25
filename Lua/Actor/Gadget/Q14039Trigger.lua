require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger = class("Q14039Trigger", GadgetActorProxy)
Q14039Trigger.defaultAlias = "Q14039Trigger"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger] OnPostDataPrepare")
    this = self
end

function Q14039Trigger:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger] TriggerIn")
    actorMgr:GetActor("14039"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14039")
        actor:CreateQuestNpcById(1403915, npcs.Npc1090Data.id, 0, false, 0)
        actor:RequestInteraction(npcs.Npc1090Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14039Trigger:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger] PreTriggerIn")
end

function Q14039Trigger:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger] LightUpTriggerIn")
end

function Q14039Trigger:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger] TriggerOut")
end

return Q14039Trigger
