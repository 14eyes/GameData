require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619903_KaiCheTrigger = class("Q7619903_KaiCheTrigger", GadgetActorProxy)
Q7619903_KaiCheTrigger.defaultAlias = "Q7619903_KaiCheTrigger"
local Q76199ClientConfig = require("Quest/Client/Q76199ClientConfig")

local this
local subIDs = Q76199ClientConfig.SubIDs
local datas = Q76199ClientConfig.Datas
local npcs = Q76199ClientConfig.Npcs
local points = Q76199ClientConfig.Points

function Q7619903_KaiCheTrigger:OnPostDataPrepare()
    print("Q7619903_KaiCheTrigger - OnPostDataPrepare")
    this = self
end

function Q7619903_KaiCheTrigger:OnPostComponentPrepare()
    print("Q7619903_KaiCheTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76199)
end

function Q7619903_KaiCheTrigger:TriggerIn()
    print("Q7619903_KaiCheTrigger - TriggerIn")
    actorMgr:GetActor("76199"):QuestNarratorTask(datas.NarratorWithId_7619901, nil)
    this:DestroySelf()
end

function Q7619903_KaiCheTrigger:PreTriggerIn()
    print("Q7619903_KaiCheTrigger - PreTriggerIn")
end

function Q7619903_KaiCheTrigger:LightUpTriggerIn()
    print("Q7619903_KaiCheTrigger - LightUpTriggerIn")
end

function Q7619903_KaiCheTrigger:TriggerOut()
    print("Q7619903_KaiCheTrigger - TriggerOut")
end

return Q7619903_KaiCheTrigger
