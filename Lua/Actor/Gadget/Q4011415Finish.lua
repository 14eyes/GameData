require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011415Finish = class("Q4011415Finish", GadgetActorProxy)
Q4011415Finish.defaultAlias = "Q4011415Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011415Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011415Finish] OnPostDataPrepare")
    this = self
end

function Q4011415Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011415Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(11, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011415Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011415)
    this:DestroySelf()
end

function Q4011415Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Finish] PreTriggerIn")
end

function Q4011415Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Finish] LightUpTriggerIn")
end

function Q4011415Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011415Finish] TriggerOut")
end

return Q4011415Finish
