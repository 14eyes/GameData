require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012914TriggerFinish = class("Q4012914TriggerFinish", GadgetActorProxy)
Q4012914TriggerFinish.defaultAlias = "Q4012914TriggerFinish"
local Q40129ClientConfig = require("Quest/Client/Q40129ClientConfig")

local this
local subIDs = Q40129ClientConfig.SubIDs
local npcs = Q40129ClientConfig.Npcs
local points = Q40129ClientConfig.Points
local datas = Q40129ClientConfig.Datas

function Q4012914TriggerFinish:OnPostDataPrepare()
    print("[MainId: 40129][Trigger: Q4012914TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q4012914TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 40129][Trigger: Q4012914TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012914TriggerFinish:TriggerIn()
    print("[MainId: 40129][Trigger: Q4012914TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 4012914)
    this:DestroySelf()
end

function Q4012914TriggerFinish:PreTriggerIn()
    print("[MainId: 40129][Trigger: Q4012914TriggerFinish] PreTriggerIn")
end

function Q4012914TriggerFinish:LightUpTriggerIn()
    print("[MainId: 40129][Trigger: Q4012914TriggerFinish] LightUpTriggerIn")
end

function Q4012914TriggerFinish:TriggerOut()
    print("[MainId: 40129][Trigger: Q4012914TriggerFinish] TriggerOut")
end

return Q4012914TriggerFinish
