require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3016Trigger = class("Q3016Trigger", GadgetActorProxy)
Q3016Trigger.defaultAlias = "Q3016Trigger"
local Q3016ClientConfig = require("Quest/Client/Q3016ClientConfig")

local subIDs = Q3016ClientConfig.SubIDs
local npcs = Q3016ClientConfig.Npcs
local datas = Q3016ClientConfig.Datas

function Q3016Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3016Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3016Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
    actorMgr:GetActor("3016"):NarratorOnlyTaskByData(datas.NarratorWithId4, nil, 3016)
end

function Q3016Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3016Trigger
