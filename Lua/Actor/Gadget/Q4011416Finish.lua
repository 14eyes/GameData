require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011416Finish = class("Q4011416Finish", GadgetActorProxy)
Q4011416Finish.defaultAlias = "Q4011416Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011416Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011416Finish] OnPostDataPrepare")
    this = self
end

function Q4011416Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011416Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011416Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011416Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011416)
    this:DestroySelf()
end

function Q4011416Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011416Finish] PreTriggerIn")
end

function Q4011416Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011416Finish] LightUpTriggerIn")
end

function Q4011416Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011416Finish] TriggerOut")
end

return Q4011416Finish
