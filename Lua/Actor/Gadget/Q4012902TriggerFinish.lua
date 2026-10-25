require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012902TriggerFinish = class("Q4012902TriggerFinish", GadgetActorProxy)
Q4012902TriggerFinish.defaultAlias = "Q4012902TriggerFinish"
local Q40129ClientConfig = require("Quest/Client/Q40129ClientConfig")

local this
local subIDs = Q40129ClientConfig.SubIDs
local npcs = Q40129ClientConfig.Npcs
local points = Q40129ClientConfig.Points
local datas = Q40129ClientConfig.Datas

function Q4012902TriggerFinish:OnPostDataPrepare()
    print("[MainId: 40129][Trigger: Q4012902TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q4012902TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 40129][Trigger: Q4012902TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012902TriggerFinish:TriggerIn()
    print("[MainId: 40129][Trigger: Q4012902TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 4012902)
    this:DestroySelf()
end

function Q4012902TriggerFinish:PreTriggerIn()
    print("[MainId: 40129][Trigger: Q4012902TriggerFinish] PreTriggerIn")
end

function Q4012902TriggerFinish:LightUpTriggerIn()
    print("[MainId: 40129][Trigger: Q4012902TriggerFinish] LightUpTriggerIn")
end

function Q4012902TriggerFinish:TriggerOut()
    print("[MainId: 40129][Trigger: Q4012902TriggerFinish] TriggerOut")
end

return Q4012902TriggerFinish
