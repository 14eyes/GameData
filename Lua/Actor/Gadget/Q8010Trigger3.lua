require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8010Trigger3 = class("Q8010Trigger3", GadgetActorProxy)
Q8010Trigger3.defaultAlias = "Q8010Trigger3"
local Q8010ClientConfig = require("Quest/Client/Q8010ClientConfig")

local this
local subIDs = Q8010ClientConfig.SubIDs
local npcs = Q8010ClientConfig.Npcs
local points = Q8010ClientConfig.Points

function Q8010Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8010Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8010Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8010"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8010")
        actor:CreateQuestNpcById(801013, npcs.Npc13072Data.id, 0)
        actor:RequestInteraction(npcs.Npc13072Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8010Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8010Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8010Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q8010Trigger3
