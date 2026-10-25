require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012916TriggerFinish = class("Q4012916TriggerFinish", GadgetActorProxy)
Q4012916TriggerFinish.defaultAlias = "Q4012916TriggerFinish"
local Q40129ClientConfig = require("Quest/Client/Q40129ClientConfig")

local this
local subIDs = Q40129ClientConfig.SubIDs
local npcs = Q40129ClientConfig.Npcs
local points = Q40129ClientConfig.Points
local datas = Q40129ClientConfig.Datas

function Q4012916TriggerFinish:OnPostDataPrepare()
    print("[MainId: 40129][Trigger: Q4012916TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q4012916TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 40129][Trigger: Q4012916TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012916TriggerFinish:TriggerIn()
    print("[MainId: 40129][Trigger: Q4012916TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 4012916)
    this:DestroySelf()
end

function Q4012916TriggerFinish:PreTriggerIn()
    print("[MainId: 40129][Trigger: Q4012916TriggerFinish] PreTriggerIn")
end

function Q4012916TriggerFinish:LightUpTriggerIn()
    print("[MainId: 40129][Trigger: Q4012916TriggerFinish] LightUpTriggerIn")
end

function Q4012916TriggerFinish:TriggerOut()
    print("[MainId: 40129][Trigger: Q4012916TriggerFinish] TriggerOut")
end

return Q4012916TriggerFinish
