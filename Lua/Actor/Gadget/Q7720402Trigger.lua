require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7720402Trigger = class("Q7720402Trigger", GadgetActorProxy)
Q7720402Trigger.defaultAlias = "Q7720402Trigger"
local Q77204ClientConfig = require("Quest/Client/Q77204ClientConfig")

local this
local subIDs = Q77204ClientConfig.SubIDs
local datas = Q77204ClientConfig.Datas
local npcs = Q77204ClientConfig.Npcs
local points = Q77204ClientConfig.Points

function Q7720402Trigger:OnPostDataPrepare()
    print("Q7720402Trigger - OnPostDataPrepare")
    this = self
end

function Q7720402Trigger:OnPostComponentPrepare()
    print("Q7720402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77204)
end

function Q7720402Trigger:TriggerIn()
    print("Q7720402Trigger - TriggerIn")
    actorMgr:GetActor("77204"):RequestInteraction(npcs.Npc7591.alias, "", true)
end

function Q7720402Trigger:PreTriggerIn()
    print("Q7720402Trigger - PreTriggerIn")
end

function Q7720402Trigger:LightUpTriggerIn()
    print("Q7720402Trigger - LightUpTriggerIn")
    actorMgr:GetActor("77204"):ShowBlackScreenWithDialogText(0, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Q7720402Trigger:TriggerOut()
    print("Q7720402Trigger - TriggerOut")
end

return Q7720402Trigger
