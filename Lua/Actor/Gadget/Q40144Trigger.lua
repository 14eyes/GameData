require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40144Trigger = class("Q40144Trigger", GadgetActorProxy)
Q40144Trigger.defaultAlias = "Q40144Trigger"
local Q40144ClientConfig = require("Quest/Client/Q40144ClientConfig")

local this
local subIDs = Q40144ClientConfig.SubIDs
local npcs = Q40144ClientConfig.Npcs
local points = Q40144ClientConfig.Points
local datas = Q40144ClientConfig.Datas

function Q40144Trigger:OnPostDataPrepare()
    print("[MainId: 40144][Trigger: Q40144Trigger] OnPostDataPrepare")
    this = self
end

function Q40144Trigger:OnPostComponentPrepare()
    print("[MainId: 40144][Trigger: Q40144Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40144Trigger:TriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger] TriggerIn")
    actorMgr:GetActor("40144"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40144")
        actor:CreateQuestNpcById(4014402, npcs.LisaData.id, 0)
        actor:RequestInteraction(npcs.LisaData.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40144Trigger:PreTriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger] PreTriggerIn")
end

function Q40144Trigger:LightUpTriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger] LightUpTriggerIn")
    actorMgr:GetActor("40144"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40144Trigger:TriggerOut()
    print("[MainId: 40144][Trigger: Q40144Trigger] TriggerOut")
end

return Q40144Trigger
