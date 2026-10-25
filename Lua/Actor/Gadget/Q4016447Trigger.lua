require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016447Trigger = class("Q4016447Trigger", GadgetActorProxy)
Q4016447Trigger.defaultAlias = "Q4016447Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016447Trigger:OnPostDataPrepare()
    print("Q4016447Trigger - OnPostDataPrepare")
    this = self
end

function Q4016447Trigger:OnPostComponentPrepare()
    print("Q4016447Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(70, 220, 35, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016447Trigger:TriggerIn()
    print("Q4016447Trigger - TriggerIn")
    local actor = actorMgr:GetActor("40164")
    actor.ShowBlackScreenWithDialogText(actor, 0.5, 1, 0, function(arg1)
        actor:DestroyQuestNpcActor(npcs.Npc1075.alias, 100)
        actor:DestroyQuestNpcActor(npcs.Npc2670.alias, 100)
        actor:PlayCutsceneIndex(4016402, function(arg1)
            actorUtils.FinishQuestID(false, 4016447)
        end, nil, nil, false)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4016447Trigger:PreTriggerIn()
    print("Q4016447Trigger - PreTriggerIn")
end

function Q4016447Trigger:LightUpTriggerIn()
    print("Q4016447Trigger - LightUpTriggerIn")
end

function Q4016447Trigger:TriggerOut()
    print("Q4016447Trigger - TriggerOut")
end

return Q4016447Trigger
