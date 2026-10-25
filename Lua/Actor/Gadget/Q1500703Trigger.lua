require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500703Trigger = class("Q1500703Trigger", GadgetActorProxy)
Q1500703Trigger.defaultAlias = "Q1500703Trigger"
local Q15007ClientConfig = require("Quest/Client/Q15007ClientConfig")

local this
local subIDs = Q15007ClientConfig.SubIDs
local datas = Q15007ClientConfig.Datas
local npcs = Q15007ClientConfig.Npcs
local points = Q15007ClientConfig.Points

function Q1500703Trigger:OnPostDataPrepare()
    print("Q1500703Trigger - OnPostDataPrepare")
    this = self
end

function Q1500703Trigger:OnPostComponentPrepare()
    print("Q1500703Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15007)
end

function Q1500703Trigger:TriggerIn()
    print("Q1500703Trigger - TriggerIn")
    actorMgr:GetActor("15007"):RequestInteraction(npcs.Npc6070.alias, "", true)
    this:DestroySelf()
end

function Q1500703Trigger:PreTriggerIn()
    print("Q1500703Trigger - PreTriggerIn")
end

function Q1500703Trigger:LightUpTriggerIn()
    print("Q1500703Trigger - LightUpTriggerIn")
end

function Q1500703Trigger:TriggerOut()
    print("Q1500703Trigger - TriggerOut")
end

return Q1500703Trigger
