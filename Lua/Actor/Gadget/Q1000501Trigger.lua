require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000501Trigger = class("Q1000501Trigger", GadgetActorProxy)
Q1000501Trigger.defaultAlias = "Q1000501Trigger"
local Q10005ClientConfig = require("Quest/Client/Q10005ClientConfig")

local this
local subIDs = Q10005ClientConfig.SubIDs
local datas = Q10005ClientConfig.Datas
local npcs = Q10005ClientConfig.Npcs
local points = Q10005ClientConfig.Points

function Q1000501Trigger:OnPostDataPrepare()
    print("Q1000501Trigger - OnPostDataPrepare")
    this = self
end

function Q1000501Trigger:OnPostComponentPrepare()
    print("Q1000501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10005)
end

function Q1000501Trigger:TriggerIn()
    print("Q1000501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000501)
    this:DestroySelf()
end

function Q1000501Trigger:PreTriggerIn()
    print("Q1000501Trigger - PreTriggerIn")
end

function Q1000501Trigger:LightUpTriggerIn()
    print("Q1000501Trigger - LightUpTriggerIn")
end

function Q1000501Trigger:TriggerOut()
    print("Q1000501Trigger - TriggerOut")
end

return Q1000501Trigger
