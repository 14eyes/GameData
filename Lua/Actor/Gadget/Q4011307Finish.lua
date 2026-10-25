require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011307Finish = class("Q4011307Finish", GadgetActorProxy)
Q4011307Finish.defaultAlias = "Q4011307Finish"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011307Finish:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011307Finish] OnPostDataPrepare")
    this = self
end

function Q4011307Finish:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011307Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011307Finish:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011307Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011307)
    this:DestroySelf()
end

function Q4011307Finish:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011307Finish] PreTriggerIn")
end

function Q4011307Finish:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011307Finish] LightUpTriggerIn")
end

function Q4011307Finish:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011307Finish] TriggerOut")
end

return Q4011307Finish
