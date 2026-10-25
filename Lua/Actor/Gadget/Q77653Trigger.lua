require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77653Trigger = class("Q77653Trigger", GadgetActorProxy)
Q77653Trigger.defaultAlias = "Q77653Trigger"
local Q77653ClientConfig = require("Quest/Client/Q77653ClientConfig")

local this
local subIDs = Q77653ClientConfig.SubIDs
local npcs = Q77653ClientConfig.Npcs
local points = Q77653ClientConfig.Points

function Q77653Trigger:OnPostDataPrepare()
    print("Q77653Trigger - OnPostDataPrepare")
    this = self
end

function Q77653Trigger:OnPostComponentPrepare()
    print("Q77653Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77653)
end

function Q77653Trigger:TriggerIn()
    print("Q77653Trigger - TriggerIn")
    actorMgr:GetActor("77653"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("77653"):CreateQuestNpcById(7765301, npcs.Npc7580.id, 0, false, 0)
        actorMgr:GetActor("77653"):RequestInteraction(npcs.Npc7580.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q77653Trigger:PreTriggerIn()
    print("Q77653Trigger - PreTriggerIn")
end

function Q77653Trigger:LightUpTriggerIn()
    print("Q77653Trigger - LightUpTriggerIn")
end

function Q77653Trigger:TriggerOut()
    print("Q77653Trigger - TriggerOut")
end

return Q77653Trigger
