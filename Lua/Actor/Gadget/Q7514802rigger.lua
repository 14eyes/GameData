require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7514802rigger = class("Q7514802rigger", GadgetActorProxy)
Q7514802rigger.defaultAlias = "Q7514802rigger"
local Q75148ClientConfig = require("Quest/Client/Q75148ClientConfig")

local this
local subIDs = Q75148ClientConfig.SubIDs
local npcs = Q75148ClientConfig.Npcs
local points = Q75148ClientConfig.Points

function Q7514802rigger:OnPostDataPrepare()
    print("Q7514802rigger - OnPostDataPrepare")
    this = self
end

function Q7514802rigger:OnPostComponentPrepare()
    print("Q7514802rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75148)
end

function Q7514802rigger:TriggerIn()
    print("Q7514802rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7514802)
    this:DestroySelf()
end

function Q7514802rigger:PreTriggerIn()
    print("Q7514802rigger - PreTriggerIn")
end

function Q7514802rigger:LightUpTriggerIn()
    print("Q7514802rigger - LightUpTriggerIn")
end

function Q7514802rigger:TriggerOut()
    print("Q7514802rigger - TriggerOut")
end

return Q7514802rigger
