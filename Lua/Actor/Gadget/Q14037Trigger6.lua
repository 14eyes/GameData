require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14037Trigger6 = class("Q14037Trigger6", GadgetActorProxy)
Q14037Trigger6.defaultAlias = "Q14037Trigger6"
local Q14037ClientConfig = require("Quest/Client/Q14037ClientConfig")

local this
local subIDs = Q14037ClientConfig.SubIDs
local npcs = Q14037ClientConfig.Npcs
local points = Q14037ClientConfig.Points
local datas = Q14037ClientConfig.Datas

function Q14037Trigger6:OnPostDataPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger6] OnPostDataPrepare")
    this = self
end

function Q14037Trigger6:OnPostComponentPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger6] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14037)
end

function Q14037Trigger6:TriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger6] TriggerIn")
    actorMgr:GetActor("14037"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14037")
        actor:CreateQuestNpcById(1403707, npcs.Npc14115Data.id, 0, false, 0)
        actor:GetQuestNpcActor(npcs.Npc14115Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
        actor:RequestInteraction(npcs.Npc14115Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14037Trigger6:PreTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger6] PreTriggerIn")
end

function Q14037Trigger6:LightUpTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger6] LightUpTriggerIn")
    actorMgr:GetActor("14037"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14037Trigger6:TriggerOut()
    print("[MainId: 14037][Trigger: Q14037Trigger6] TriggerOut")
end

return Q14037Trigger6
