require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger3 = class("Q14038Trigger3", GadgetActorProxy)
Q14038Trigger3.defaultAlias = "Q14038Trigger3"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger3:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger3] OnPostDataPrepare")
    this = self
end

function Q14038Trigger3:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger3:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger3] TriggerIn")
    actorMgr:GetActor("14038"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("14038"):RequestInteraction(npcs.Npc4169Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14038Trigger3:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger3] PreTriggerIn")
end

function Q14038Trigger3:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger3] LightUpTriggerIn")
    actorMgr:GetActor("14038"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14038Trigger3:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger3] TriggerOut")
end

return Q14038Trigger3
