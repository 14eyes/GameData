require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302902Trigger = class("Q2302902Trigger", GadgetActorProxy)
Q2302902Trigger.defaultAlias = "Q2302902Trigger"
local Q23029ClientConfig = require("Quest/Client/Q23029ClientConfig")

local subIDs = Q23029ClientConfig.SubIDs
local npcs = Q23029ClientConfig.Npcs
local datas = Q23029ClientConfig.Datas

function Q2302902Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302902Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302902Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23029"):NarratorOnlyTask(datas.NarratorTable, function(arg1)
        actorUtils.FinishQuestID(false, 2302902)
    end, "")

    self:DestroySelf()
end

function Q2302902Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302902Trigger
