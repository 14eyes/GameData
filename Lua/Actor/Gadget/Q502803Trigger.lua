require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502803Trigger = class("Q502803Trigger", GadgetActorProxy)
Q502803Trigger.defaultAlias = "Q502803Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502803Trigger:OnPostDataPrepare()
    print("Q502803Trigger - OnPostDataPrepare")
    this = self
end

function Q502803Trigger:OnPostComponentPrepare()
    print("Q502803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502803Trigger:TriggerIn()
    print("Q502803Trigger - TriggerIn")
    local actor = actorMgr:GetActor("5028")
    actor.ShowBlackScreenWithDialogText(actor, 0.5, 1, 0, function(arg1)
        actor:PlayCutsceneIndex(50280301, function(arg1)
            actorUtils.FinishQuestID(false, 502803)
        end, nil, nil, false)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q502803Trigger:PreTriggerIn()
    print("Q502803Trigger - PreTriggerIn")
end

function Q502803Trigger:LightUpTriggerIn()
    print("Q502803Trigger - LightUpTriggerIn")
end

function Q502803Trigger:TriggerOut()
    print("Q502803Trigger - TriggerOut")
end

return Q502803Trigger
