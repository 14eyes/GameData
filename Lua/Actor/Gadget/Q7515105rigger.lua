require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515105rigger = class("Q7515105rigger", GadgetActorProxy)
Q7515105rigger.defaultAlias = "Q7515105rigger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515105rigger:OnPostDataPrepare()
    print("Q7515105rigger - OnPostDataPrepare")
    this = self
end

function Q7515105rigger:OnPostComponentPrepare()
    print("Q7515105rigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515105rigger:TriggerIn()
    print("Q7515105rigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515105)
    this:DestroySelf()
end

function Q7515105rigger:PreTriggerIn()
    print("Q7515105rigger - PreTriggerIn")
end

function Q7515105rigger:LightUpTriggerIn()
    print("Q7515105rigger - LightUpTriggerIn")
end

function Q7515105rigger:TriggerOut()
    print("Q7515105rigger - TriggerOut")
end

return Q7515105rigger
