require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303204Trigger = class("Q2303204Trigger", GadgetActorProxy)
Q2303204Trigger.defaultAlias = "Q2303204Trigger"
local Q23032ClientConfig = require("Quest/Client/Q23032ClientConfig")

local subIDs = Q23032ClientConfig.SubIDs
local npcs = Q23032ClientConfig.Npcs
local datas = Q23032ClientConfig.Datas

function Q2303204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2303204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303204Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23032"):NarratorOnlyTask(datas.NarratorTable04, nil, "")
    actorUtils.FinishQuestID(false, 2303204)
    self:DestroySelf()
end

function Q2303204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2303204Trigger
