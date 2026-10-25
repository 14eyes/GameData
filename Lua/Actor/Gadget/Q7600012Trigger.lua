require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600012Trigger = class("Q7600012Trigger", GadgetActorProxy)
Q7600012Trigger.defaultAlias = "Q7600012Trigger"
local Q76000ClientConfig = require("Quest/Client/Q76000ClientConfig")

local this
local subIDs = Q76000ClientConfig.SubIDs
local datas = Q76000ClientConfig.Datas
local npcs = Q76000ClientConfig.Npcs
local points = Q76000ClientConfig.Points

function Q7600012Trigger:OnPostDataPrepare()
    print("Q7600012Trigger - OnPostDataPrepare")
    this = self
end

function Q7600012Trigger:OnPostComponentPrepare()
    print("Q7600012Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76000)
end

function Q7600012Trigger:TriggerIn()
    print("Q7600012Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600012)
    this:DestroySelf()
end

function Q7600012Trigger:PreTriggerIn()
    print("Q7600012Trigger - PreTriggerIn")
end

function Q7600012Trigger:LightUpTriggerIn()
    print("Q7600012Trigger - LightUpTriggerIn")
end

function Q7600012Trigger:TriggerOut()
    print("Q7600012Trigger - TriggerOut")
end

return Q7600012Trigger
