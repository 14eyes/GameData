require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008702Trigger1 = class("Q4008702Trigger1", GadgetActorProxy)
Q4008702Trigger1.defaultAlias = "Q4008702Trigger1"
local Q40087ClientConfig = require("Quest/Client/Q40087ClientConfig")

local subIDs = Q40087ClientConfig.SubIDs
local datas = Q40087ClientConfig.Datas

function Q4008702Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008702Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008702Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40087"):NarratorOnlyTaskByData(datas.NarratorWithId01)
    actorUtils.FinishQuestID(false, 4008702)
    self:DestroySelf()
end

function Q4008702Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q4008702Trigger1
