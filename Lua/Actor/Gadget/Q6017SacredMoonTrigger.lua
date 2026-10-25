require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q6017SacredMoonTrigger = class("Q6017SacredMoonTrigger", GadgetActorProxy)
Q6017SacredMoonTrigger.defaultAlias = "Q6017SacredMoonTrigger"
local Q6017ClientConfig = require("Quest/Client/Q6017ClientConfig")

local this
local subIDs = Q6017ClientConfig.SubIDs
local datas = Q6017ClientConfig.Datas
local npcs = Q6017ClientConfig.Npcs
local points = Q6017ClientConfig.Points

function Q6017SacredMoonTrigger:OnPostDataPrepare()
    print("Q6017SacredMoonTrigger - OnPostDataPrepare")
    this = self
end

function Q6017SacredMoonTrigger:OnPostComponentPrepare()
    print("Q6017SacredMoonTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6017)
end

function Q6017SacredMoonTrigger:TriggerIn()
    print("Q6017SacredMoonTrigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601719)
    this:DestroySelf()
end

function Q6017SacredMoonTrigger:PreTriggerIn()
    print("Q6017SacredMoonTrigger - PreTriggerIn")
end

function Q6017SacredMoonTrigger:LightUpTriggerIn()
    print("Q6017SacredMoonTrigger - LightUpTriggerIn")
end

function Q6017SacredMoonTrigger:TriggerOut()
    print("Q6017SacredMoonTrigger - TriggerOut")
end

return Q6017SacredMoonTrigger
