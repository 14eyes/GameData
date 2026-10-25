require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77670Trigger_2 = class("Q77670Trigger_2", GadgetActorProxy)
Q77670Trigger_2.defaultAlias = "Q77670Trigger_2"
local Q77670ClientConfig = require("Quest/Client/Q77670ClientConfig")

local this
local subIDs = Q77670ClientConfig.SubIDs
local npcs = Q77670ClientConfig.Npcs
local points = Q77670ClientConfig.Points

function Q77670Trigger_2:OnPostDataPrepare()
    print("Q77670Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q77670Trigger_2:OnPostComponentPrepare()
    print("Q77670Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77670)
end

function Q77670Trigger_2:TriggerIn()
    print("Q77670Trigger_2 - TriggerIn")
    actorMgr:GetActor("77670"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("77670"):CreateQuestNpcById(7767003, 1335, 0, false, 0)
        actorMgr:GetActor("77670"):RequestInteraction(npcs.Npc1335.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q77670Trigger_2:PreTriggerIn()
    print("Q77670Trigger_2 - PreTriggerIn")
end

function Q77670Trigger_2:LightUpTriggerIn()
    print("Q77670Trigger_2 - LightUpTriggerIn")
end

function Q77670Trigger_2:TriggerOut()
    print("Q77670Trigger_2 - TriggerOut")
end

return Q77670Trigger_2
