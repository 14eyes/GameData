require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74196Trigger4 = class("Q74196Trigger4", GadgetActorProxy)
Q74196Trigger4.defaultAlias = "Q74196Trigger4"
local Q74196ClientConfig = require("Quest/Client/Q74196ClientConfig")

local this
local subIDs = Q74196ClientConfig.SubIDs
local npcs = Q74196ClientConfig.Npcs
local datas = Q74196ClientConfig.Datas

function Q74196Trigger4:OnPostDataPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger4] OnPostDataPrepare")
    this = self
end

function Q74196Trigger4:OnPostComponentPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74196)
end

function Q74196Trigger4:TriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger4] TriggerIn")
    actorMgr:GetActor("74196"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("74196")
        actorUtils.FinishQuestID(false, 7419622)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q74196Trigger4:PreTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger4] PreTriggerIn")
end

function Q74196Trigger4:LightUpTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger4] LightUpTriggerIn")
    actorMgr:GetActor("74196"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Q74196Trigger4:TriggerOut()
    print("[MainId: 74196][Trigger: Q74196Trigger4] TriggerOut")
end

return Q74196Trigger4
