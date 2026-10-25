require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77654Trigger = class("Q77654Trigger", GadgetActorProxy)
Q77654Trigger.defaultAlias = "Q77654Trigger"
local Q77654ClientConfig = require("Quest/Client/Q77654ClientConfig")

local this
local subIDs = Q77654ClientConfig.SubIDs
local npcs = Q77654ClientConfig.Npcs
local points = Q77654ClientConfig.Points

function Q77654Trigger:OnPostDataPrepare()
    print("Q77654Trigger - OnPostDataPrepare")
    this = self
end

function Q77654Trigger:OnPostComponentPrepare()
    print("Q77654Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(32, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77654)
end

function Q77654Trigger:TriggerIn()
    print("Q77654Trigger - TriggerIn")
    actorMgr:GetActor("77654"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("77654"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            actorMgr:GetActor("77654"):CreateQuestNpcById(7765403, npcs.Npc7580.id, 0, false, 0)
            actorMgr:GetActor("77654"):RequestInteraction(npcs.Npc7580.alias, "", true)
        end, nil, nil, 0, false, true)

        this:DestroySelf()
    end, true)
end

function Q77654Trigger:PreTriggerIn()
    print("Q77654Trigger - PreTriggerIn")
end

function Q77654Trigger:LightUpTriggerIn()
    print("Q77654Trigger - LightUpTriggerIn")
end

function Q77654Trigger:TriggerOut()
    print("Q77654Trigger - TriggerOut")
end

return Q77654Trigger
