require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517605rigger = class("Q7517605rigger", GadgetActorProxy)
Q7517605rigger.defaultAlias = "Q7517605rigger"
local Q75176ClientConfig = require("Quest/Client/Q75176ClientConfig")

local this
local subIDs = Q75176ClientConfig.SubIDs
local datas = Q75176ClientConfig.Datas
local npcs = Q75176ClientConfig.Npcs
local points = Q75176ClientConfig.Points

function Q7517605rigger:OnPostDataPrepare()
    print("Q7517605rigger - OnPostDataPrepare")
    this = self
end

function Q7517605rigger:OnPostComponentPrepare()
    print("Q7517605rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75176)
end

function Q7517605rigger:TriggerIn()
    print("Q7517605rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7517605)
    this:DestroySelf()
end

function Q7517605rigger:PreTriggerIn()
    print("Q7517605rigger - PreTriggerIn")
end

function Q7517605rigger:LightUpTriggerIn()
    print("Q7517605rigger - LightUpTriggerIn")
end

function Q7517605rigger:TriggerOut()
    print("Q7517605rigger - TriggerOut")
end

return Q7517605rigger
