require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011201Finish = class("Q4011201Finish", GadgetActorProxy)
Q4011201Finish.defaultAlias = "Q4011201Finish"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q4011201Finish:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q4011201Finish] OnPostDataPrepare")
    this = self
end

function Q4011201Finish:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q4011201Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011201Finish:TriggerIn()
    print("[MainId: 40112][Trigger: Q4011201Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011201)
    this:DestroySelf()
end

function Q4011201Finish:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q4011201Finish] PreTriggerIn")
end

function Q4011201Finish:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q4011201Finish] LightUpTriggerIn")
end

function Q4011201Finish:TriggerOut()
    print("[MainId: 40112][Trigger: Q4011201Finish] TriggerOut")
end

return Q4011201Finish
