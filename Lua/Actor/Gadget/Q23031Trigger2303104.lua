require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23031Trigger2303104 = class("Q23031Trigger2303104", GadgetActorProxy)
Q23031Trigger2303104.defaultAlias = "Q23031Trigger2303104"
local Q23031ClientConfig = require("Quest/Client/Q23031ClientConfig")

local subIDs = Q23031ClientConfig.SubIDs
local npcs = Q23031ClientConfig.Npcs
local datas = Q23031ClientConfig.Datas

function Q23031Trigger2303104:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23031Trigger2303104:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(25, 35, true, {x = 0.0, y = 0.0, z = -5.0}, self.TriggerIn, self.TriggerOut)
end

function Q23031Trigger2303104:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23031"):NarratorOnlyTask(datas.NarratorTable230319901, nil, "")
    self:DestroySelf()
end

function Q23031Trigger2303104:TriggerOut()
    print("TriggerOut")
end

return Q23031Trigger2303104
