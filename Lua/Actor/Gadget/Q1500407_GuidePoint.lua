require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500407_GuidePoint = class("Q1500407_GuidePoint", GadgetActorProxy)
Q1500407_GuidePoint.defaultAlias = "Q1500407_GuidePoint"
local Q15004ClientConfig = require("Quest/Client/Q15004ClientConfig")

local this
local subIDs = Q15004ClientConfig.SubIDs
local datas = Q15004ClientConfig.Datas
local npcs = Q15004ClientConfig.Npcs
local points = Q15004ClientConfig.Points

function Q1500407_GuidePoint:OnPostDataPrepare()
    print("Q1500407_GuidePoint - OnPostDataPrepare")
    this = self
end

function Q1500407_GuidePoint:OnPostComponentPrepare()
    print("Q1500407_GuidePoint - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15004)
end

function Q1500407_GuidePoint:TriggerIn()
    print("Q1500407_GuidePoint - TriggerIn")
    actorUtils.FinishQuestID(false, 1500407)
    this:DestroySelf()
end

function Q1500407_GuidePoint:PreTriggerIn()
    print("Q1500407_GuidePoint - PreTriggerIn")
end

function Q1500407_GuidePoint:LightUpTriggerIn()
    print("Q1500407_GuidePoint - LightUpTriggerIn")
end

function Q1500407_GuidePoint:TriggerOut()
    print("Q1500407_GuidePoint - TriggerOut")
end

return Q1500407_GuidePoint
