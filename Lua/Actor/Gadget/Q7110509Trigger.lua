require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110509Trigger = class("Q7110509Trigger", GadgetActorProxy)
Q7110509Trigger.defaultAlias = "Q7110509Trigger"
local Q71105ClientConfig = require("Quest/Client/Q71105ClientConfig")

local this
local subIDs = Q71105ClientConfig.SubIDs
local npcs = Q71105ClientConfig.Npcs
local points = Q71105ClientConfig.Points
local datas = Q71105ClientConfig.Datas

function Q7110509Trigger:OnPostDataPrepare()
    print("[MainId: 71105][Trigger: Q7110509Trigger] OnPostDataPrepare")
    this = self
end

function Q7110509Trigger:OnPostComponentPrepare()
    print("[MainId: 71105][Trigger: Q7110509Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110509Trigger:TriggerIn()
    print("[MainId: 71105][Trigger: Q7110509Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71105")
    actor:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("71105"):CreateQuestNpcById(7110509, npcs.Npc2491Data.id, 0)
        actorUtils.FinishQuestID(false, 7110509)
    end, nil, nil, 0, false, true)

    actor:StopNarrator()
    actor:ClearNarratorTask()
    this:DestroySelf()
end

function Q7110509Trigger:PreTriggerIn()
    print("[MainId: 71105][Trigger: Q7110509Trigger] PreTriggerIn")
end

function Q7110509Trigger:LightUpTriggerIn()
    print("[MainId: 71105][Trigger: Q7110509Trigger] LightUpTriggerIn")
end

function Q7110509Trigger:TriggerOut()
    print("[MainId: 71105][Trigger: Q7110509Trigger] TriggerOut")
end

return Q7110509Trigger
