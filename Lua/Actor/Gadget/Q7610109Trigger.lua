require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610109Trigger = class("Q7610109Trigger", GadgetActorProxy)
Q7610109Trigger.defaultAlias = "Q7610109Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610109Trigger:OnPostDataPrepare()
    print("Q7610109Trigger - OnPostDataPrepare")
    this = self
end

function Q7610109Trigger:OnPostComponentPrepare()
    print("Q7610109Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610109Trigger:TriggerIn()
    print("Q7610109Trigger - TriggerIn")
    actorMgr:GetActor("76101"):PlayCutsceneIndex(7610109, function(arg1)
        actorUtils.FinishQuestID(false, 7610109)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7610109Trigger:PreTriggerIn()
    print("Q7610109Trigger - PreTriggerIn")
end

function Q7610109Trigger:LightUpTriggerIn()
    print("Q7610109Trigger - LightUpTriggerIn")
end

function Q7610109Trigger:TriggerOut()
    print("Q7610109Trigger - TriggerOut")
end

return Q7610109Trigger
