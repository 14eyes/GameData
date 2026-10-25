require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500305_GuidePoint = class("Q1500305_GuidePoint", GadgetActorProxy)
Q1500305_GuidePoint.defaultAlias = "Q1500305_GuidePoint"
local Q15003ClientConfig = require("Quest/Client/Q15003ClientConfig")

local this
local subIDs = Q15003ClientConfig.SubIDs
local datas = Q15003ClientConfig.Datas
local npcs = Q15003ClientConfig.Npcs
local points = Q15003ClientConfig.Points

function Q1500305_GuidePoint:OnPostDataPrepare()
    print("Q1500305_GuidePoint - OnPostDataPrepare")
    this = self
end

function Q1500305_GuidePoint:OnPostComponentPrepare()
    print("Q1500305_GuidePoint - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15003)
end

function Q1500305_GuidePoint:TriggerIn()
    print("Q1500305_GuidePoint - TriggerIn")
    actorUtils.FinishQuestID(false, 1500305)
    this:DestroySelf()
end

function Q1500305_GuidePoint:PreTriggerIn()
    print("Q1500305_GuidePoint - PreTriggerIn")
end

function Q1500305_GuidePoint:LightUpTriggerIn()
    print("Q1500305_GuidePoint - LightUpTriggerIn")
end

function Q1500305_GuidePoint:TriggerOut()
    print("Q1500305_GuidePoint - TriggerOut")
end

return Q1500305_GuidePoint
