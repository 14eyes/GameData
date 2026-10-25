require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1019Trigger3 = class("Q1019Trigger3", GadgetActorProxy)
Q1019Trigger3.defaultAlias = "Q1019Trigger3"
local Q1019ClientConfig = require("Quest/Client/Q1019ClientConfig")

local subIDs = Q1019ClientConfig.SubIDs
local npcs = Q1019ClientConfig.Npcs
local datas = Q1019ClientConfig.Datas

function Q1019Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1019Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1019Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1019"):NarratorOnlyTaskByData(datas.FoundYanfeiKaiche, nil, 1019)
    self:DestroySelf()
end

function Q1019Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q1019Trigger3
