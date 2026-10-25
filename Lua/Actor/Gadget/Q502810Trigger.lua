require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502810Trigger = class("Q502810Trigger", GadgetActorProxy)
Q502810Trigger.defaultAlias = "Q502810Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502810Trigger:OnPostDataPrepare()
    print("Q502810Trigger - OnPostDataPrepare")
    this = self
end

function Q502810Trigger:OnPostComponentPrepare()
    print("Q502810Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502810Trigger:TriggerIn()
    print("Q502810Trigger - TriggerIn")
    local actor = actorMgr:GetActor("5028")
    actor.ShowBlackScreenWithDialogText(actor, 0.5, 1, 0, function(arg1)
        actor:PlayCutsceneIndex(50281101, function(arg1)
            actorUtils.FinishQuestID(false, 502810)
        end, nil, nil, false)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q502810Trigger:PreTriggerIn()
    print("Q502810Trigger - PreTriggerIn")
end

function Q502810Trigger:LightUpTriggerIn()
    print("Q502810Trigger - LightUpTriggerIn")
end

function Q502810Trigger:TriggerOut()
    print("Q502810Trigger - TriggerOut")
end

return Q502810Trigger
