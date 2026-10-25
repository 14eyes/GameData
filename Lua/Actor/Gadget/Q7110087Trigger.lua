require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110087Trigger = class("Q7110087Trigger", GadgetActorProxy)
Q7110087Trigger.defaultAlias = "Q7110087Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110087Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110087Trigger] OnPostDataPrepare")
    this = self
end

function Q7110087Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110087Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110087Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110087Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7110087Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110087Trigger] PreTriggerIn")
end

function Q7110087Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110087Trigger] LightUpTriggerIn")
    actorMgr:GetActor("71100"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, function(arg1)
        actorMgr:GetActor("71100"):PlayCutsceneIndex(71100871, function(arg1)
            local actor = actorMgr:GetActor("71100")
            actorUtils.FinishQuestID(false, 7110087)
        end, nil, nil, false)
    end, nil, 0, false, true)
end

function Q7110087Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110087Trigger] TriggerOut")
end

return Q7110087Trigger
