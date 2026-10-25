require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402206TriggerFinish = class("Q1402206TriggerFinish", GadgetActorProxy)
Q1402206TriggerFinish.defaultAlias = "Q1402206TriggerFinish"
local Q14022ClientConfig = require("Quest/Client/Q14022ClientConfig")

local this
local subIDs = Q14022ClientConfig.SubIDs
local npcs = Q14022ClientConfig.Npcs
local points = Q14022ClientConfig.Points
local datas = Q14022ClientConfig.Datas

function Q1402206TriggerFinish:OnPostDataPrepare()
    print("[MainId: 14022][Trigger: Q1402206TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q1402206TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 14022][Trigger: Q1402206TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14022)
end

function Q1402206TriggerFinish:TriggerIn()
    print("[MainId: 14022][Trigger: Q1402206TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 1402206)
    this:DestroySelf()
end

function Q1402206TriggerFinish:PreTriggerIn()
    print("[MainId: 14022][Trigger: Q1402206TriggerFinish] PreTriggerIn")
end

function Q1402206TriggerFinish:LightUpTriggerIn()
    print("[MainId: 14022][Trigger: Q1402206TriggerFinish] LightUpTriggerIn")
end

function Q1402206TriggerFinish:TriggerOut()
    print("[MainId: 14022][Trigger: Q1402206TriggerFinish] TriggerOut")
end

return Q1402206TriggerFinish
