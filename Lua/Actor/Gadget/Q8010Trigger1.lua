require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8010Trigger1 = class("Q8010Trigger1", GadgetActorProxy)
Q8010Trigger1.defaultAlias = "Q8010Trigger1"
local Q8010ClientConfig = require("Quest/Client/Q8010ClientConfig")

local this
local subIDs = Q8010ClientConfig.SubIDs
local npcs = Q8010ClientConfig.Npcs
local points = Q8010ClientConfig.Points

function Q8010Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8010Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8010Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8010"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8010")
        actor:CreateQuestNpcById(801002, npcs.Npc13072Data.id, 0)
        actor:RequestInteraction(npcs.Npc13072Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8010Trigger1:TriggerOut()
    print("TriggerOut")
end

function Q8010Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8010Trigger1:PreTriggerIn()
    print("PreTriggerIn")
end

return Q8010Trigger1
