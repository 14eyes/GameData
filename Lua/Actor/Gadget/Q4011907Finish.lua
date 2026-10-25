require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011907Finish = class("Q4011907Finish", GadgetActorProxy)
Q4011907Finish.defaultAlias = "Q4011907Finish"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011907Finish:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011907Finish] OnPostDataPrepare")
    this = self
end

function Q4011907Finish:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011907Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011907Finish:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011907Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011907)
    this:DestroySelf()
end

function Q4011907Finish:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011907Finish] PreTriggerIn")
end

function Q4011907Finish:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011907Finish] LightUpTriggerIn")
end

function Q4011907Finish:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011907Finish] TriggerOut")
end

return Q4011907Finish
