require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610013Trigger = class("Q7610013Trigger", GadgetActorProxy)
Q7610013Trigger.defaultAlias = "Q7610013Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610013Trigger:OnPostDataPrepare()
    print("Q7610013Trigger - OnPostDataPrepare")
    this = self
end

function Q7610013Trigger:OnPostComponentPrepare()
    print("Q7610013Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610013Trigger:TriggerIn()
    print("Q7610013Trigger - TriggerIn")
    actorMgr:GetActor("76100"):PlayCutsceneIndex(7610013, function(arg1)
        actorMgr:GetActor("76100"):ActionSafeCall(function(arg1)
            actorUtils.FinishQuestID(false, 7610013)
            this:DestroySelf()
        end)
    end, nil, nil, false)
end

function Q7610013Trigger:PreTriggerIn()
    print("Q7610013Trigger - PreTriggerIn")
end

function Q7610013Trigger:LightUpTriggerIn()
    print("Q7610013Trigger - LightUpTriggerIn")
end

function Q7610013Trigger:TriggerOut()
    print("Q7610013Trigger - TriggerOut")
end

return Q7610013Trigger
