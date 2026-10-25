require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13027TriggerDust2 = class("Q13027TriggerDust2", GadgetActorProxy)
Q13027TriggerDust2.defaultAlias = "Q13027TriggerDust2"
local Q13027ClientConfig = require("Quest/Client/Q13027ClientConfig")

local this
local subIDs = Q13027ClientConfig.SubIDs
local npcs = Q13027ClientConfig.Npcs
local points = Q13027ClientConfig.Points
local datas = Q13027ClientConfig.Datas

function Q13027TriggerDust2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13027TriggerDust2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13027TriggerDust2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302718)
    this:DestroySelf()
end

function Q13027TriggerDust2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13027TriggerDust2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13027TriggerDust2:TriggerOut()
    print("TriggerOut")
end

return Q13027TriggerDust2
