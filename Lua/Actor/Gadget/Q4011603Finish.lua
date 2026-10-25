require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011603Finish = class("Q4011603Finish", GadgetActorProxy)
Q4011603Finish.defaultAlias = "Q4011603Finish"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011603Finish:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011603Finish] OnPostDataPrepare")
    this = self
end

function Q4011603Finish:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011603Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011603Finish:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011603Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011603)
    this:DestroySelf()
end

function Q4011603Finish:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011603Finish] PreTriggerIn")
end

function Q4011603Finish:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011603Finish] LightUpTriggerIn")
end

function Q4011603Finish:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011603Finish] TriggerOut")
end

return Q4011603Finish
