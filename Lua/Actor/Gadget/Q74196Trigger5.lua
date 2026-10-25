require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74196Trigger5 = class("Q74196Trigger5", GadgetActorProxy)
Q74196Trigger5.defaultAlias = "Q74196Trigger5"
local Q74196ClientConfig = require("Quest/Client/Q74196ClientConfig")

local this
local subIDs = Q74196ClientConfig.SubIDs
local npcs = Q74196ClientConfig.Npcs
local datas = Q74196ClientConfig.Datas

function Q74196Trigger5:OnPostDataPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger5] OnPostDataPrepare")
    this = self
end

function Q74196Trigger5:OnPostComponentPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger5] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74196)
end

function Q74196Trigger5:TriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger5] TriggerIn")
    actorMgr:GetActor("74196"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("74196"):PlayCutsceneIndex(7419619, function(arg1)
            local actor = actorMgr:GetActor("74196")
            actorUtils.FinishQuestID(false, 7419619)
        end, nil, nil, false)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q74196Trigger5:PreTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger5] PreTriggerIn")
end

function Q74196Trigger5:LightUpTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger5] LightUpTriggerIn")
    actorMgr:GetActor("74196"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q74196Trigger5:TriggerOut()
    print("[MainId: 74196][Trigger: Q74196Trigger5] TriggerOut")
end

return Q74196Trigger5
