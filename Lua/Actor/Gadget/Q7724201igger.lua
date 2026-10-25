require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7724201igger = class("Q7724201igger", GadgetActorProxy)
Q7724201igger.defaultAlias = "Q7724201igger"
local Q77242ClientConfig = require("Quest/Client/Q77242ClientConfig")

local this
local subIDs = Q77242ClientConfig.SubIDs
local datas = Q77242ClientConfig.Datas
local npcs = Q77242ClientConfig.Npcs
local points = Q77242ClientConfig.Points

function Q7724201igger:OnPostDataPrepare()
    print("Q7724201igger - OnPostDataPrepare")
    this = self
end

function Q7724201igger:OnPostComponentPrepare()
    print("Q7724201igger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77242)
end

function Q7724201igger:TriggerIn()
    print("Q7724201igger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7724201})
    this:DestroySelf()
end

function Q7724201igger:PreTriggerIn()
    print("Q7724201igger - PreTriggerIn")
end

function Q7724201igger:LightUpTriggerIn()
    print("Q7724201igger - LightUpTriggerIn")
end

function Q7724201igger:TriggerOut()
    print("Q7724201igger - TriggerOut")
end

return Q7724201igger
