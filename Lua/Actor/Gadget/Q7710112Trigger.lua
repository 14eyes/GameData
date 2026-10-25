require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710112Trigger = class("Q7710112Trigger", GadgetActorProxy)
Q7710112Trigger.defaultAlias = "Q7710112Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710112Trigger:OnPostDataPrepare()
    print("Q7710112Trigger - OnPostDataPrepare")
    this = self
end

function Q7710112Trigger:OnPostComponentPrepare()
    print("Q7710112Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710112Trigger:TriggerIn()
    print("Q7710112Trigger - TriggerIn")
    actorMgr:GetActor("77101"):PlayCutsceneIndex(7710112, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7710112})
        actorUtils.FinishQuestID(false, 7710112)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7710112Trigger:PreTriggerIn()
    print("Q7710112Trigger - PreTriggerIn")
end

function Q7710112Trigger:LightUpTriggerIn()
    print("Q7710112Trigger - LightUpTriggerIn")
end

function Q7710112Trigger:TriggerOut()
    print("Q7710112Trigger - TriggerOut")
end

return Q7710112Trigger
