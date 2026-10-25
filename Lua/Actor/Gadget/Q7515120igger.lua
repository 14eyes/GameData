require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515120igger = class("Q7515120igger", GadgetActorProxy)
Q7515120igger.defaultAlias = "Q7515120igger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515120igger:OnPostDataPrepare()
    print("Q7515120igger - OnPostDataPrepare")
    this = self
end

function Q7515120igger:OnPostComponentPrepare()
    print("Q7515120igger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515120igger:TriggerIn()
    print("Q7515120igger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515120)
    this:DestroySelf()
end

function Q7515120igger:PreTriggerIn()
    print("Q7515120igger - PreTriggerIn")
end

function Q7515120igger:LightUpTriggerIn()
    print("Q7515120igger - LightUpTriggerIn")
end

function Q7515120igger:TriggerOut()
    print("Q7515120igger - TriggerOut")
end

return Q7515120igger
