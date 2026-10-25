require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500702Trigger = class("Q1500702Trigger", GadgetActorProxy)
Q1500702Trigger.defaultAlias = "Q1500702Trigger"
local Q15007ClientConfig = require("Quest/Client/Q15007ClientConfig")

local this
local subIDs = Q15007ClientConfig.SubIDs
local datas = Q15007ClientConfig.Datas
local npcs = Q15007ClientConfig.Npcs
local points = Q15007ClientConfig.Points

function Q1500702Trigger:OnPostDataPrepare()
    print("Q1500702Trigger - OnPostDataPrepare")
    this = self
end

function Q1500702Trigger:OnPostComponentPrepare()
    print("Q1500702Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 4, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15007)
end

function Q1500702Trigger:TriggerIn()
    print("Q1500702Trigger - TriggerIn")
    actorMgr:GetActor("15007"):RequestInteraction(npcs.Npc14229.alias, "", true)
    this:DestroySelf()
end

function Q1500702Trigger:PreTriggerIn()
    print("Q1500702Trigger - PreTriggerIn")
end

function Q1500702Trigger:LightUpTriggerIn()
    print("Q1500702Trigger - LightUpTriggerIn")
end

function Q1500702Trigger:TriggerOut()
    print("Q1500702Trigger - TriggerOut")
end

return Q1500702Trigger
