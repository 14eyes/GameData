require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517604rigger = class("Q7517604rigger", GadgetActorProxy)
Q7517604rigger.defaultAlias = "Q7517604rigger"
local Q75176ClientConfig = require("Quest/Client/Q75176ClientConfig")

local this
local subIDs = Q75176ClientConfig.SubIDs
local datas = Q75176ClientConfig.Datas
local npcs = Q75176ClientConfig.Npcs
local points = Q75176ClientConfig.Points

function Q7517604rigger:OnPostDataPrepare()
    print("Q7517604rigger - OnPostDataPrepare")
    this = self
end

function Q7517604rigger:OnPostComponentPrepare()
    print("Q7517604rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75176)
end

function Q7517604rigger:TriggerIn()
    print("Q7517604rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7517604)
    this:DestroySelf()
end

function Q7517604rigger:PreTriggerIn()
    print("Q7517604rigger - PreTriggerIn")
end

function Q7517604rigger:LightUpTriggerIn()
    print("Q7517604rigger - LightUpTriggerIn")
end

function Q7517604rigger:TriggerOut()
    print("Q7517604rigger - TriggerOut")
end

return Q7517604rigger
