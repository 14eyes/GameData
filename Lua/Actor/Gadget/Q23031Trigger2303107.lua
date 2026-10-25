require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23031Trigger2303107 = class("Q23031Trigger2303107", GadgetActorProxy)
Q23031Trigger2303107.defaultAlias = "Q23031Trigger2303107"
local Q23031ClientConfig = require("Quest/Client/Q23031ClientConfig")

local subIDs = Q23031ClientConfig.SubIDs
local npcs = Q23031ClientConfig.Npcs
local datas = Q23031ClientConfig.Datas

function Q23031Trigger2303107:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23031Trigger2303107:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23031Trigger2303107:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23031"):NarratorOnlyTask(datas.NarratorTable230319904, nil, "")
    self:DestroySelf()
end

function Q23031Trigger2303107:TriggerOut()
    print("TriggerOut")
end

return Q23031Trigger2303107
