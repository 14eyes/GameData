require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614308Trigger = class("Q7614308Trigger", GadgetActorProxy)
Q7614308Trigger.defaultAlias = "Q7614308Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614308Trigger:OnPostDataPrepare()
    print("Q7614308Trigger - OnPostDataPrepare")
    this = self
end

function Q7614308Trigger:OnPostComponentPrepare()
    print("Q7614308Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614308Trigger:TriggerIn()
    print("Q7614308Trigger - TriggerIn")
    actorMgr:GetActor("76143"):AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 7614308)
        this:DestroySelf()
    end, nil)
end

function Q7614308Trigger:PreTriggerIn()
    print("Q7614308Trigger - PreTriggerIn")
end

function Q7614308Trigger:LightUpTriggerIn()
    print("Q7614308Trigger - LightUpTriggerIn")
end

function Q7614308Trigger:TriggerOut()
    print("Q7614308Trigger - TriggerOut")
end

return Q7614308Trigger
