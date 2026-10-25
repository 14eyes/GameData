require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610026Trigger = class("Q7610026Trigger", GadgetActorProxy)
Q7610026Trigger.defaultAlias = "Q7610026Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610026Trigger:OnPostDataPrepare()
    print("Q7610026Trigger - OnPostDataPrepare")
    this = self
end

function Q7610026Trigger:OnPostComponentPrepare()
    print("Q7610026Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610026Trigger:TriggerIn()
    print("Q7610026Trigger - TriggerIn")
    actorMgr:GetActor("76100"):PlayCutsceneIndex(7610008, function(arg1)
        actorMgr:GetActor("76100"):AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.FinishQuestID(false, 7610026)
            this:DestroySelf()
        end)
    end, nil, nil, false)
end

function Q7610026Trigger:PreTriggerIn()
    print("Q7610026Trigger - PreTriggerIn")
end

function Q7610026Trigger:LightUpTriggerIn()
    print("Q7610026Trigger - LightUpTriggerIn")
end

function Q7610026Trigger:TriggerOut()
    print("Q7610026Trigger - TriggerOut")
end

return Q7610026Trigger
