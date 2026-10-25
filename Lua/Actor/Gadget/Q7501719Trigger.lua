require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501719Trigger = class("Q7501719Trigger", GadgetActorProxy)
Q7501719Trigger.defaultAlias = "Q7501719Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501719Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501719Trigger] OnPostDataPrepare")
    this = self
end

function Q7501719Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501719Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501719Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501719Trigger] TriggerIn")
    actorMgr:GetActor("75017"):CallDelayByQuest("", 8, function(arg1)
        actorMgr:GetActor("75017"):PlayCutsceneIndex(7501709, function(arg1)
            local actor = actorMgr:GetActor("75017")
            actorUtils.FinishQuestID(false, 7501719)
            this:DestroySelf()
        end, nil, nil, false)
    end)
end

function Q7501719Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501719Trigger] PreTriggerIn")
end

function Q7501719Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501719Trigger] LightUpTriggerIn")
end

function Q7501719Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501719Trigger] TriggerOut")
end

return Q7501719Trigger
