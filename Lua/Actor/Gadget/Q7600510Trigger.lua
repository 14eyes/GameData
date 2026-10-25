require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600510Trigger = class("Q7600510Trigger", GadgetActorProxy)
Q7600510Trigger.defaultAlias = "Q7600510Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600510Trigger:OnPostDataPrepare()
    print("Q7600510Trigger - OnPostDataPrepare")
    this = self
end

function Q7600510Trigger:OnPostComponentPrepare()
    print("Q7600510Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600510Trigger:TriggerIn()
    print("Q7600510Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600510)
    this:DestroySelf()
end

function Q7600510Trigger:PreTriggerIn()
    print("Q7600510Trigger - PreTriggerIn")
end

function Q7600510Trigger:LightUpTriggerIn()
    print("Q7600510Trigger - LightUpTriggerIn")
end

function Q7600510Trigger:TriggerOut()
    print("Q7600510Trigger - TriggerOut")
end

return Q7600510Trigger
