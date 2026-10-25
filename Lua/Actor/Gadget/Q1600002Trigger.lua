require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600002Trigger = class("Q1600002Trigger", GadgetActorProxy)
Q1600002Trigger.defaultAlias = "Q1600002Trigger"
local Q16000ClientConfig = require("Quest/Client/Q16000ClientConfig")

local this
local subIDs = Q16000ClientConfig.SubIDs
local datas = Q16000ClientConfig.Datas
local npcs = Q16000ClientConfig.Npcs
local points = Q16000ClientConfig.Points

function Q1600002Trigger:OnPostDataPrepare()
    print("Q1600002Trigger - OnPostDataPrepare")
    this = self
end

function Q1600002Trigger:OnPostComponentPrepare()
    print("Q1600002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16000)
end

function Q1600002Trigger:TriggerIn()
    print("Q1600002Trigger - TriggerIn")
    actorMgr:GetActor("16000"):TryShowQuestReview("1600001")
    this:DestroySelf()
end

function Q1600002Trigger:PreTriggerIn()
    print("Q1600002Trigger - PreTriggerIn")
end

function Q1600002Trigger:LightUpTriggerIn()
    print("Q1600002Trigger - LightUpTriggerIn")
end

function Q1600002Trigger:TriggerOut()
    print("Q1600002Trigger - TriggerOut")
end

return Q1600002Trigger
