require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011401Finish = class("Q4011401Finish", GadgetActorProxy)
Q4011401Finish.defaultAlias = "Q4011401Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011401Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011401Finish] OnPostDataPrepare")
    this = self
end

function Q4011401Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011401Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011401Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011401Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011401)
    this:DestroySelf()
end

function Q4011401Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011401Finish] PreTriggerIn")
end

function Q4011401Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011401Finish] LightUpTriggerIn")
end

function Q4011401Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011401Finish] TriggerOut")
end

return Q4011401Finish
