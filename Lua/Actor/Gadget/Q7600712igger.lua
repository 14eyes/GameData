require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600712igger = class("Q7600712igger", GadgetActorProxy)
Q7600712igger.defaultAlias = "Q7600712igger"
local Q76007ClientConfig = require("Quest/Client/Q76007ClientConfig")

local this
local subIDs = Q76007ClientConfig.SubIDs
local datas = Q76007ClientConfig.Datas
local npcs = Q76007ClientConfig.Npcs
local points = Q76007ClientConfig.Points

function Q7600712igger:OnPostDataPrepare()
    print("Q7600712igger - OnPostDataPrepare")
    this = self
end

function Q7600712igger:OnPostComponentPrepare()
    print("Q7600712igger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76007)
end

function Q7600712igger:TriggerIn()
    print("Q7600712igger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600712)
    this:DestroySelf()
end

function Q7600712igger:PreTriggerIn()
    print("Q7600712igger - PreTriggerIn")
end

function Q7600712igger:LightUpTriggerIn()
    print("Q7600712igger - LightUpTriggerIn")
end

function Q7600712igger:TriggerOut()
    print("Q7600712igger - TriggerOut")
end

return Q7600712igger
