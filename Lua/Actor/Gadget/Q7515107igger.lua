require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515107igger = class("Q7515107igger", GadgetActorProxy)
Q7515107igger.defaultAlias = "Q7515107igger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515107igger:OnPostDataPrepare()
    print("Q7515107igger - OnPostDataPrepare")
    this = self
end

function Q7515107igger:OnPostComponentPrepare()
    print("Q7515107igger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515107igger:TriggerIn()
    print("Q7515107igger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515125)
    this:DestroySelf()
end

function Q7515107igger:PreTriggerIn()
    print("Q7515107igger - PreTriggerIn")
end

function Q7515107igger:LightUpTriggerIn()
    print("Q7515107igger - LightUpTriggerIn")
end

function Q7515107igger:TriggerOut()
    print("Q7515107igger - TriggerOut")
end

return Q7515107igger
