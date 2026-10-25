require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502410trigger = class("Q502410trigger", GadgetActorProxy)
Q502410trigger.defaultAlias = "Q502410trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502410trigger:OnPostDataPrepare()
    print("Q502410trigger - OnPostDataPrepare")
    this = self
end

function Q502410trigger:OnPostComponentPrepare()
    print("Q502410trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502410trigger:TriggerIn()
    print("Q502410trigger - TriggerIn")
    this:DestroySelf()
end

function Q502410trigger:PreTriggerIn()
    print("Q502410trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 502410)
end

function Q502410trigger:LightUpTriggerIn()
    print("Q502410trigger - LightUpTriggerIn")
end

function Q502410trigger:TriggerOut()
    print("Q502410trigger - TriggerOut")
end

return Q502410trigger
