require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011323Finish = class("Q4011323Finish", GadgetActorProxy)
Q4011323Finish.defaultAlias = "Q4011323Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011323Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011323Finish] OnPostDataPrepare")
    this = self
end

function Q4011323Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011323Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011323Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011323Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011323)
    this:DestroySelf()
end

function Q4011323Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011323Finish] PreTriggerIn")
end

function Q4011323Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011323Finish] LightUpTriggerIn")
end

function Q4011323Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011323Finish] TriggerOut")
end

return Q4011323Finish
