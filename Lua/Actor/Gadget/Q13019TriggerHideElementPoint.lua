require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13019TriggerHideElementPoint = class("Q13019TriggerHideElementPoint", GadgetActorProxy)
Q13019TriggerHideElementPoint.defaultAlias = "Q13019TriggerHideElementPoint"
local Q13019ClientConfig = require("Quest/Client/Q13019ClientConfig")

local this
local subIDs = Q13019ClientConfig.SubIDs
local npcs = Q13019ClientConfig.Npcs
local points = Q13019ClientConfig.Points
local datas = Q13019ClientConfig.Datas

function Q13019TriggerHideElementPoint:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13019TriggerHideElementPoint:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13019TriggerHideElementPoint:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1301915)
    this:DestroySelf()
end

function Q13019TriggerHideElementPoint:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13019TriggerHideElementPoint:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13019TriggerHideElementPoint:TriggerOut()
    print("TriggerOut")
end

return Q13019TriggerHideElementPoint
