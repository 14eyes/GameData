require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515117igger = class("Q7515117igger", GadgetActorProxy)
Q7515117igger.defaultAlias = "Q7515117igger"
local Q75151ClientConfig = require("Quest/Client/Q75151ClientConfig")

local this
local subIDs = Q75151ClientConfig.SubIDs
local datas = Q75151ClientConfig.Datas
local npcs = Q75151ClientConfig.Npcs
local points = Q75151ClientConfig.Points

function Q7515117igger:OnPostDataPrepare()
    print("Q7515117igger - OnPostDataPrepare")
    this = self
end

function Q7515117igger:OnPostComponentPrepare()
    print("Q7515117igger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75151)
end

function Q7515117igger:TriggerIn()
    print("Q7515117igger - TriggerIn")
    actorUtils.FinishQuestID(false, 7515117)
    this:DestroySelf()
end

function Q7515117igger:PreTriggerIn()
    print("Q7515117igger - PreTriggerIn")
end

function Q7515117igger:LightUpTriggerIn()
    print("Q7515117igger - LightUpTriggerIn")
end

function Q7515117igger:TriggerOut()
    print("Q7515117igger - TriggerOut")
end

return Q7515117igger
