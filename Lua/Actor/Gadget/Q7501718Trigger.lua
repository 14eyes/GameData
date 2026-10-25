require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501718Trigger = class("Q7501718Trigger", GadgetActorProxy)
Q7501718Trigger.defaultAlias = "Q7501718Trigger"
local Q75017ClientConfig = require("Quest/Client/Q75017ClientConfig")

local this
local subIDs = Q75017ClientConfig.SubIDs
local npcs = Q75017ClientConfig.Npcs

function Q7501718Trigger:OnPostDataPrepare()
    print("[MainId: 75017][Trigger: Q7501718Trigger] OnPostDataPrepare")
    this = self
end

function Q7501718Trigger:OnPostComponentPrepare()
    print("[MainId: 75017][Trigger: Q7501718Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75017)
end

function Q7501718Trigger:TriggerIn()
    print("[MainId: 75017][Trigger: Q7501718Trigger] TriggerIn")
    actorMgr:GetActor("75017"):PlayCutsceneIndex(7501713, function(arg1)
        actorUtils.FinishQuestID(false, 7501718)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7501718Trigger:PreTriggerIn()
    print("[MainId: 75017][Trigger: Q7501718Trigger] PreTriggerIn")
end

function Q7501718Trigger:LightUpTriggerIn()
    print("[MainId: 75017][Trigger: Q7501718Trigger] LightUpTriggerIn")
end

function Q7501718Trigger:TriggerOut()
    print("[MainId: 75017][Trigger: Q7501718Trigger] TriggerOut")
end

return Q7501718Trigger
