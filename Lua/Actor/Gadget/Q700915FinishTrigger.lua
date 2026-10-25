require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700915FinishTrigger = class("Q700915FinishTrigger", GadgetActorProxy)
Q700915FinishTrigger.defaultAlias = "Q700915FinishTrigger"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q700915FinishTrigger:OnPostDataPrepare()
    print("Q700915FinishTrigger - OnPostDataPrepare")
    this = self
end

function Q700915FinishTrigger:OnPostComponentPrepare()
    print("Q700915FinishTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q700915FinishTrigger:TriggerIn()
    print("Q700915FinishTrigger - TriggerIn")
end

function Q700915FinishTrigger:PreTriggerIn()
    print("Q700915FinishTrigger - PreTriggerIn")
end

function Q700915FinishTrigger:LightUpTriggerIn()
    print("Q700915FinishTrigger - LightUpTriggerIn")
    actorUtils.FinishQuestID(false, 700915)
    this:DestroySelf()
end

function Q700915FinishTrigger:TriggerOut()
    print("Q700915FinishTrigger - TriggerOut")
end

return Q700915FinishTrigger
