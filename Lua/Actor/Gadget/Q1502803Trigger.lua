require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502803Trigger = class("Q1502803Trigger", GadgetActorProxy)
Q1502803Trigger.defaultAlias = "Q1502803Trigger"
local Q15028ClientConfig = require("Quest/Client/Q15028ClientConfig")

local this
local subIDs = Q15028ClientConfig.SubIDs
local datas = Q15028ClientConfig.Datas
local npcs = Q15028ClientConfig.Npcs
local points = Q15028ClientConfig.Points

function Q1502803Trigger:OnPostDataPrepare()
    print("Q1502803Trigger - OnPostDataPrepare")
    this = self
end

function Q1502803Trigger:OnPostComponentPrepare()
    print("Q1502803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15028)
end

function Q1502803Trigger:TriggerIn()
    print("Q1502803Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502803)
    this:DestroySelf()
end

function Q1502803Trigger:PreTriggerIn()
    print("Q1502803Trigger - PreTriggerIn")
end

function Q1502803Trigger:LightUpTriggerIn()
    print("Q1502803Trigger - LightUpTriggerIn")
end

function Q1502803Trigger:TriggerOut()
    print("Q1502803Trigger - TriggerOut")
end

return Q1502803Trigger
