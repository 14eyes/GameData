require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40146Trigger = class("Q40146Trigger", GadgetActorProxy)
Q40146Trigger.defaultAlias = "Q40146Trigger"
local Q40146ClientConfig = require("Quest/Client/Q40146ClientConfig")

local this
local subIDs = Q40146ClientConfig.SubIDs
local npcs = Q40146ClientConfig.Npcs
local points = Q40146ClientConfig.Points

function Q40146Trigger:OnPostDataPrepare()
    print("[MainId: 40146][Trigger: Q40146Trigger] OnPostDataPrepare")
    this = self
end

function Q40146Trigger:OnPostComponentPrepare()
    print("[MainId: 40146][Trigger: Q40146Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40146Trigger:TriggerIn()
    print("[MainId: 40146][Trigger: Q40146Trigger] TriggerIn")
    actorMgr:GetActor("40146"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40146")
        actor:CreateQuestNpcById(4014601, npcs.Npc30501Data.id, 0)
        actor:RequestInteraction(npcs.Npc30501Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40146Trigger:PreTriggerIn()
    print("[MainId: 40146][Trigger: Q40146Trigger] PreTriggerIn")
end

function Q40146Trigger:LightUpTriggerIn()
    print("[MainId: 40146][Trigger: Q40146Trigger] LightUpTriggerIn")
end

function Q40146Trigger:TriggerOut()
    print("[MainId: 40146][Trigger: Q40146Trigger] TriggerOut")
end

return Q40146Trigger
