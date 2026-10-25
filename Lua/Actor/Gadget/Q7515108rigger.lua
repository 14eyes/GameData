require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515108rigger = class("Q7515108rigger", GadgetActorProxy)
Q7515108rigger.defaultAlias = "Q7515108rigger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515108rigger:OnPostDataPrepare()
    print("Q7515108rigger - OnPostDataPrepare")
    this = self
end

function Q7515108rigger:OnPostComponentPrepare()
    print("Q7515108rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515108rigger:TriggerIn()
    print("Q7515108rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515109)
    this:DestroySelf()
end

function Q7515108rigger:PreTriggerIn()
    print("Q7515108rigger - PreTriggerIn")
end

function Q7515108rigger:LightUpTriggerIn()
    print("Q7515108rigger - LightUpTriggerIn")
end

function Q7515108rigger:TriggerOut()
    print("Q7515108rigger - TriggerOut")
end

return Q7515108rigger
