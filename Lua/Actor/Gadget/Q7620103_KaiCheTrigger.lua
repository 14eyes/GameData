require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620103_KaiCheTrigger = class("Q7620103_KaiCheTrigger", GadgetActorProxy)
Q7620103_KaiCheTrigger.defaultAlias = "Q7620103_KaiCheTrigger"
local Q76201ClientConfig = require("Quest/Client/Q76201ClientConfig")

local this
local subIDs = Q76201ClientConfig.SubIDs
local datas = Q76201ClientConfig.Datas
local npcs = Q76201ClientConfig.Npcs
local points = Q76201ClientConfig.Points

function Q7620103_KaiCheTrigger:OnPostDataPrepare()
    print("Q7620103_KaiCheTrigger - OnPostDataPrepare")
    this = self
end

function Q7620103_KaiCheTrigger:OnPostComponentPrepare()
    print("Q7620103_KaiCheTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76201)
end

function Q7620103_KaiCheTrigger:TriggerIn()
    print("Q7620103_KaiCheTrigger - TriggerIn")
    actorMgr:GetActor("76201"):QuestNarratorTask(datas.NarratorWithId_7620101, nil)
    this:DestroySelf()
end

function Q7620103_KaiCheTrigger:PreTriggerIn()
    print("Q7620103_KaiCheTrigger - PreTriggerIn")
end

function Q7620103_KaiCheTrigger:LightUpTriggerIn()
    print("Q7620103_KaiCheTrigger - LightUpTriggerIn")
end

function Q7620103_KaiCheTrigger:TriggerOut()
    print("Q7620103_KaiCheTrigger - TriggerOut")
end

return Q7620103_KaiCheTrigger
