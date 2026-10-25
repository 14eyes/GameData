require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14037Trigger2 = class("Q14037Trigger2", GadgetActorProxy)
Q14037Trigger2.defaultAlias = "Q14037Trigger2"
local Q14037ClientConfig = require("Quest/Client/Q14037ClientConfig")

local this
local subIDs = Q14037ClientConfig.SubIDs
local npcs = Q14037ClientConfig.Npcs
local points = Q14037ClientConfig.Points
local datas = Q14037ClientConfig.Datas

function Q14037Trigger2:OnPostDataPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger2] OnPostDataPrepare")
    this = self
end

function Q14037Trigger2:OnPostComponentPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14037)
end

function Q14037Trigger2:TriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger2] TriggerIn")
    actorMgr:GetActor("14037"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14037")
        actor:CreateQuestNpcById(1403703, npcs.Npc1090Data.id, 0, false, 0)
        actor:RequestInteraction(npcs.Npc1090Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14037Trigger2:PreTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger2] PreTriggerIn")
end

function Q14037Trigger2:LightUpTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger2] LightUpTriggerIn")
end

function Q14037Trigger2:TriggerOut()
    print("[MainId: 14037][Trigger: Q14037Trigger2] TriggerOut")
end

return Q14037Trigger2
