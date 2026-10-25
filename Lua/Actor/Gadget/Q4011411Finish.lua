require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011411Finish = class("Q4011411Finish", GadgetActorProxy)
Q4011411Finish.defaultAlias = "Q4011411Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011411Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011411Finish] OnPostDataPrepare")
    this = self
end

function Q4011411Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011411Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011411Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011411Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011411)
    this:DestroySelf()
end

function Q4011411Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011411Finish] PreTriggerIn")
end

function Q4011411Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011411Finish] LightUpTriggerIn")
end

function Q4011411Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011411Finish] TriggerOut")
end

return Q4011411Finish
