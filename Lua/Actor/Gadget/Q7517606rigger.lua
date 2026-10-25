require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517606rigger = class("Q7517606rigger", GadgetActorProxy)
Q7517606rigger.defaultAlias = "Q7517606rigger"
local Q75176ClientConfig = require("Quest/Client/Q75176ClientConfig")

local this
local subIDs = Q75176ClientConfig.SubIDs
local datas = Q75176ClientConfig.Datas
local npcs = Q75176ClientConfig.Npcs
local points = Q75176ClientConfig.Points

function Q7517606rigger:OnPostDataPrepare()
    print("Q7517606rigger - OnPostDataPrepare")
    this = self
end

function Q7517606rigger:OnPostComponentPrepare()
    print("Q7517606rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75176)
end

function Q7517606rigger:TriggerIn()
    print("Q7517606rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7517606)
    this:DestroySelf()
end

function Q7517606rigger:PreTriggerIn()
    print("Q7517606rigger - PreTriggerIn")
end

function Q7517606rigger:LightUpTriggerIn()
    print("Q7517606rigger - LightUpTriggerIn")
end

function Q7517606rigger:TriggerOut()
    print("Q7517606rigger - TriggerOut")
end

return Q7517606rigger
