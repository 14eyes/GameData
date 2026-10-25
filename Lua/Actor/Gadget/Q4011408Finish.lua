require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011408Finish = class("Q4011408Finish", GadgetActorProxy)
Q4011408Finish.defaultAlias = "Q4011408Finish"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011408Finish:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011408Finish] OnPostDataPrepare")
    this = self
end

function Q4011408Finish:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011408Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011408Finish:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011408Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011408)
    this:DestroySelf()
end

function Q4011408Finish:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011408Finish] PreTriggerIn")
end

function Q4011408Finish:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011408Finish] LightUpTriggerIn")
end

function Q4011408Finish:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011408Finish] TriggerOut")
end

return Q4011408Finish
