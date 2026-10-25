require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500805_watchyou = class("Q1500805_watchyou", GadgetActorProxy)
Q1500805_watchyou.defaultAlias = "Q1500805_watchyou"
local Q15008ClientConfig = require("Quest/Client/Q15008ClientConfig")

local this
local subIDs = Q15008ClientConfig.SubIDs
local datas = Q15008ClientConfig.Datas
local npcs = Q15008ClientConfig.Npcs
local points = Q15008ClientConfig.Points

function Q1500805_watchyou:OnPostDataPrepare()
    print("Q1500805_watchyou - OnPostDataPrepare")
    this = self
end

function Q1500805_watchyou:OnPostComponentPrepare()
    print("Q1500805_watchyou - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15008)
end

function Q1500805_watchyou:TriggerIn()
    print("Q1500805_watchyou - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 1500805)
end

function Q1500805_watchyou:PreTriggerIn()
    print("Q1500805_watchyou - PreTriggerIn")
end

function Q1500805_watchyou:LightUpTriggerIn()
    print("Q1500805_watchyou - LightUpTriggerIn")
end

function Q1500805_watchyou:TriggerOut()
    print("Q1500805_watchyou - TriggerOut")
end

return Q1500805_watchyou
