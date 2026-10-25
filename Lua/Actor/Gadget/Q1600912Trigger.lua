require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600912Trigger = class("Q1600912Trigger", GadgetActorProxy)
Q1600912Trigger.defaultAlias = "Q1600912Trigger"
local Q16009ClientConfig = require("Quest/Client/Q16009ClientConfig")

local this
local subIDs = Q16009ClientConfig.SubIDs
local datas = Q16009ClientConfig.Datas
local npcs = Q16009ClientConfig.Npcs
local points = Q16009ClientConfig.Points

function Q1600912Trigger:OnPostDataPrepare()
    print("Q1600912Trigger - OnPostDataPrepare")
    this = self
end

function Q1600912Trigger:OnPostComponentPrepare()
    print("Q1600912Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16009)
end

function Q1600912Trigger:TriggerIn()
    print("Q1600912Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1600912)
    this:DestroySelf()
end

function Q1600912Trigger:PreTriggerIn()
    print("Q1600912Trigger - PreTriggerIn")
end

function Q1600912Trigger:LightUpTriggerIn()
    print("Q1600912Trigger - LightUpTriggerIn")
end

function Q1600912Trigger:TriggerOut()
    print("Q1600912Trigger - TriggerOut")
end

return Q1600912Trigger
