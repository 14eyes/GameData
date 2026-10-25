require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7514903rigger = class("Q7514903rigger", GadgetActorProxy)
Q7514903rigger.defaultAlias = "Q7514903rigger"
local Q75149ClientConfig = require("Quest/Client/Q75149ClientConfig")

local this
local subIDs = Q75149ClientConfig.SubIDs
local datas = Q75149ClientConfig.Datas
local npcs = Q75149ClientConfig.Npcs
local points = Q75149ClientConfig.Points

function Q7514903rigger:OnPostDataPrepare()
    print("Q7514903rigger - OnPostDataPrepare")
    this = self
end

function Q7514903rigger:OnPostComponentPrepare()
    print("Q7514903rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75149)
end

function Q7514903rigger:TriggerIn()
    print("Q7514903rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7514903)
    this:DestroySelf()
end

function Q7514903rigger:PreTriggerIn()
    print("Q7514903rigger - PreTriggerIn")
end

function Q7514903rigger:LightUpTriggerIn()
    print("Q7514903rigger - LightUpTriggerIn")
end

function Q7514903rigger:TriggerOut()
    print("Q7514903rigger - TriggerOut")
end

return Q7514903rigger
