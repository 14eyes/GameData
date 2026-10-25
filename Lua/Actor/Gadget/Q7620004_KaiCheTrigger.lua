require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620004_KaiCheTrigger = class("Q7620004_KaiCheTrigger", GadgetActorProxy)
Q7620004_KaiCheTrigger.defaultAlias = "Q7620004_KaiCheTrigger"
local Q76200ClientConfig = require("Quest/Client/Q76200ClientConfig")

local this
local subIDs = Q76200ClientConfig.SubIDs
local datas = Q76200ClientConfig.Datas
local npcs = Q76200ClientConfig.Npcs
local points = Q76200ClientConfig.Points

function Q7620004_KaiCheTrigger:OnPostDataPrepare()
    print("Q7620004_KaiCheTrigger - OnPostDataPrepare")
    this = self
end

function Q7620004_KaiCheTrigger:OnPostComponentPrepare()
    print("Q7620004_KaiCheTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76200)
end

function Q7620004_KaiCheTrigger:TriggerIn()
    print("Q7620004_KaiCheTrigger - TriggerIn")
    actorMgr:GetActor("76200"):QuestNarratorTask(datas.NarratorWithId_7620001, function(arg1)
        actorMgr:GetActor("76200"):QuestNarratorTask(datas.NarratorWithId_7620002, nil)
    end)

    this:DestroySelf()
end

function Q7620004_KaiCheTrigger:PreTriggerIn()
    print("Q7620004_KaiCheTrigger - PreTriggerIn")
end

function Q7620004_KaiCheTrigger:LightUpTriggerIn()
    print("Q7620004_KaiCheTrigger - LightUpTriggerIn")
end

function Q7620004_KaiCheTrigger:TriggerOut()
    print("Q7620004_KaiCheTrigger - TriggerOut")
end

return Q7620004_KaiCheTrigger
