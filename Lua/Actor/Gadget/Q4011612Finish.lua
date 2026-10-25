require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011612Finish = class("Q4011612Finish", GadgetActorProxy)
Q4011612Finish.defaultAlias = "Q4011612Finish"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011612Finish:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011612Finish] OnPostDataPrepare")
    this = self
end

function Q4011612Finish:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011612Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011612Finish:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011612Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 4011612)
    this:DestroySelf()
end

function Q4011612Finish:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011612Finish] PreTriggerIn")
end

function Q4011612Finish:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011612Finish] LightUpTriggerIn")
end

function Q4011612Finish:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011612Finish] TriggerOut")
end

return Q4011612Finish
