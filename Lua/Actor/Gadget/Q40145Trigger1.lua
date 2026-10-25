require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40145Trigger1 = class("Q40145Trigger1", GadgetActorProxy)
Q40145Trigger1.defaultAlias = "Q40145Trigger1"
local Q40145ClientConfig = require("Quest/Client/Q40145ClientConfig")

local this
local subIDs = Q40145ClientConfig.SubIDs
local npcs = Q40145ClientConfig.Npcs

function Q40145Trigger1:OnPostDataPrepare()
    print("[MainId: 40145][Trigger: Q40145Trigger1] OnPostDataPrepare")
    this = self
end

function Q40145Trigger1:OnPostComponentPrepare()
    print("[MainId: 40145][Trigger: Q40145Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40145Trigger1:TriggerIn()
    print("[MainId: 40145][Trigger: Q40145Trigger1] TriggerIn")
    actorMgr:GetActor("40145"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40145")
        actor:CreateQuestNpcById(4014502, npcs.LisaData.id, 0)
        actor:RequestInteraction(npcs.LisaData.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40145Trigger1:PreTriggerIn()
    print("[MainId: 40145][Trigger: Q40145Trigger1] PreTriggerIn")
end

function Q40145Trigger1:LightUpTriggerIn()
    print("[MainId: 40145][Trigger: Q40145Trigger1] LightUpTriggerIn")
end

function Q40145Trigger1:TriggerOut()
    print("[MainId: 40145][Trigger: Q40145Trigger1] TriggerOut")
end

return Q40145Trigger1
