require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40154Trigger1 = class("Q40154Trigger1", GadgetActorProxy)
Q40154Trigger1.defaultAlias = "Q40154Trigger1"
local Q40154ClientConfig = require("Quest/Client/Q40154ClientConfig")

local this
local subIDs = Q40154ClientConfig.SubIDs
local npcs = Q40154ClientConfig.Npcs

function Q40154Trigger1:OnPostDataPrepare()
    print("[MainId: 40154][Trigger: Q40154Trigger1] OnPostDataPrepare")
    this = self
end

function Q40154Trigger1:OnPostComponentPrepare()
    print("[MainId: 40154][Trigger: Q40154Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40154Trigger1:TriggerIn()
    print("[MainId: 40154][Trigger: Q40154Trigger1] TriggerIn")
    actorMgr:GetActor("40154"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40154")
        actor:CreateQuestNpcById(4015402, npcs.LisaData.id, 0)
        actor:RequestInteraction(npcs.LisaData.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40154Trigger1:PreTriggerIn()
    print("[MainId: 40154][Trigger: Q40154Trigger1] PreTriggerIn")
end

function Q40154Trigger1:LightUpTriggerIn()
    print("[MainId: 40154][Trigger: Q40154Trigger1] LightUpTriggerIn")
end

function Q40154Trigger1:TriggerOut()
    print("[MainId: 40154][Trigger: Q40154Trigger1] TriggerOut")
end

return Q40154Trigger1
