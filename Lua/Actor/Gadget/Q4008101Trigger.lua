require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008101Trigger = class("Q4008101Trigger", GadgetActorProxy)
Q4008101Trigger.defaultAlias = "Q4008101Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008101Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40081")
    actor:ClearNarratorTask()
    actor:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 40081)
    actor:EnterSceneLookCamera({x = -558.635, y = 217.037, z = 2690.966}, 0, 1.5, false, false)
    self:DestroySelf()
end

function Q4008101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008101Trigger
