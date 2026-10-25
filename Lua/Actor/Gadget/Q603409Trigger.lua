require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603409Trigger = class("Q603409Trigger", GadgetActorProxy)
Q603409Trigger.defaultAlias = "Q603409Trigger"
local Q6034ClientConfig = require("Quest/Client/Q6034ClientConfig")

local this
local subIDs = Q6034ClientConfig.SubIDs
local datas = Q6034ClientConfig.Datas
local npcs = Q6034ClientConfig.Npcs
local points = Q6034ClientConfig.Points

function Q603409Trigger:OnPostDataPrepare()
    print("Q603409Trigger - OnPostDataPrepare")
    this = self
end

function Q603409Trigger:OnPostComponentPrepare()
    print("Q603409Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6034)
end

function Q603409Trigger:TriggerIn()
    print("Q603409Trigger - TriggerIn")
    actorMgr:GetActor("6034"):QuestNarratorTask(datas.NarratorWithId_603401, nil)
    this:DestroySelf()
end

function Q603409Trigger:PreTriggerIn()
    print("Q603409Trigger - PreTriggerIn")
end

function Q603409Trigger:LightUpTriggerIn()
    print("Q603409Trigger - LightUpTriggerIn")
end

function Q603409Trigger:TriggerOut()
    print("Q603409Trigger - TriggerOut")
end

return Q603409Trigger
