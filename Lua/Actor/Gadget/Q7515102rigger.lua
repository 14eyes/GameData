require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515102rigger = class("Q7515102rigger", GadgetActorProxy)
Q7515102rigger.defaultAlias = "Q7515102rigger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515102rigger:OnPostDataPrepare()
    print("Q7515102rigger - OnPostDataPrepare")
    this = self
end

function Q7515102rigger:OnPostComponentPrepare()
    print("Q7515102rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(130, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515102rigger:TriggerIn()
    print("Q7515102rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515102)
    this:DestroySelf()
end

function Q7515102rigger:PreTriggerIn()
    print("Q7515102rigger - PreTriggerIn")
end

function Q7515102rigger:LightUpTriggerIn()
    print("Q7515102rigger - LightUpTriggerIn")
end

function Q7515102rigger:TriggerOut()
    print("Q7515102rigger - TriggerOut")
end

return Q7515102rigger
