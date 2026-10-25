require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77655Trigger = class("Q77655Trigger", GadgetActorProxy)
Q77655Trigger.defaultAlias = "Q77655Trigger"
local Q77655ClientConfig = require("Quest/Client/Q77655ClientConfig")

local this
local subIDs = Q77655ClientConfig.SubIDs
local npcs = Q77655ClientConfig.Npcs
local points = Q77655ClientConfig.Points

function Q77655Trigger:OnPostDataPrepare()
    print("Q77655Trigger - OnPostDataPrepare")
    this = self
end

function Q77655Trigger:OnPostComponentPrepare()
    print("Q77655Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77655)
end

function Q77655Trigger:TriggerIn()
    print("Q77655Trigger - TriggerIn")
    actorMgr:GetActor("77655"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("77655"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            actorMgr:GetActor("77655"):CreateQuestNpcById(7765501, npcs.Npc7580.id, 0, false, 0)
            actorMgr:GetActor("77655"):RequestInteraction(npcs.Npc7580.alias, "", true)
        end, nil, nil, 0, false, true)

        this:DestroySelf()
    end, true)
end

function Q77655Trigger:PreTriggerIn()
    print("Q77655Trigger - PreTriggerIn")
end

function Q77655Trigger:LightUpTriggerIn()
    print("Q77655Trigger - LightUpTriggerIn")
end

function Q77655Trigger:TriggerOut()
    print("Q77655Trigger - TriggerOut")
end

return Q77655Trigger
