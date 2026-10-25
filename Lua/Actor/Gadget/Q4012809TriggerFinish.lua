require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012809TriggerFinish = class("Q4012809TriggerFinish", GadgetActorProxy)
Q4012809TriggerFinish.defaultAlias = "Q4012809TriggerFinish"
local Q40128ClientConfig = require("Quest/Client/Q40128ClientConfig")

local this
local subIDs = Q40128ClientConfig.SubIDs
local npcs = Q40128ClientConfig.Npcs
local points = Q40128ClientConfig.Points
local datas = Q40128ClientConfig.Datas

function Q4012809TriggerFinish:OnPostDataPrepare()
    print("[MainId: 40128][Trigger: Q4012809TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q4012809TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 40128][Trigger: Q4012809TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012809TriggerFinish:TriggerIn()
    print("[MainId: 40128][Trigger: Q4012809TriggerFinish] TriggerIn")
    actorMgr:GetActor("40128"):NarratorOnlyTaskByData(datas.NarratorWithId4012802, function(arg1)
        local actor = actorMgr:GetActor("40128")
        actorUtils.FinishQuestID(false, 4012809)
    end, 40128)

    this:DestroySelf()
end

function Q4012809TriggerFinish:PreTriggerIn()
    print("[MainId: 40128][Trigger: Q4012809TriggerFinish] PreTriggerIn")
end

function Q4012809TriggerFinish:LightUpTriggerIn()
    print("[MainId: 40128][Trigger: Q4012809TriggerFinish] LightUpTriggerIn")
end

function Q4012809TriggerFinish:TriggerOut()
    print("[MainId: 40128][Trigger: Q4012809TriggerFinish] TriggerOut")
end

return Q4012809TriggerFinish
