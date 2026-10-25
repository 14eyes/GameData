require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500709Trigger01 = class("Q1500709Trigger01", GadgetActorProxy)
Q1500709Trigger01.defaultAlias = "Q1500709Trigger01"
local Q15007ClientConfig = require("Quest/Client/Q15007ClientConfig")

local this
local subIDs = Q15007ClientConfig.SubIDs
local datas = Q15007ClientConfig.Datas
local npcs = Q15007ClientConfig.Npcs
local points = Q15007ClientConfig.Points

function Q1500709Trigger01:OnPostDataPrepare()
    print("Q1500709Trigger01 - OnPostDataPrepare")
    this = self
end

function Q1500709Trigger01:OnPostComponentPrepare()
    print("Q1500709Trigger01 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15007)
end

function Q1500709Trigger01:TriggerIn()
    print("Q1500709Trigger01 - TriggerIn")
    actorUtils.FinishQuestID(false, 1500709)
    this:DestroySelf()
end

function Q1500709Trigger01:PreTriggerIn()
    print("Q1500709Trigger01 - PreTriggerIn")
end

function Q1500709Trigger01:LightUpTriggerIn()
    print("Q1500709Trigger01 - LightUpTriggerIn")
end

function Q1500709Trigger01:TriggerOut()
    print("Q1500709Trigger01 - TriggerOut")
end

return Q1500709Trigger01
