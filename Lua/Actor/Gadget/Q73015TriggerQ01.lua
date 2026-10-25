require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73015TriggerQ01 = class("Q73015TriggerQ01", GadgetActorProxy)
Q73015TriggerQ01.defaultAlias = "Q73015TriggerQ01"
local Q73015ClientConfig = require("Quest/Client/Q73015ClientConfig")

local subIDs = Q73015ClientConfig.SubIDs
local npcs = Q73015ClientConfig.Npcs
local datas = Q73015ClientConfig.Datas

function Q73015TriggerQ01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73015TriggerQ01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73015TriggerQ01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73015"):NarratorOnlyTask(datas.NarratorTable, function(arg1)
        actorUtils.FinishQuestID(false, 7301501)
    end, "")

    self:DestroySelf()
end

function Q73015TriggerQ01:TriggerOut()
    print("TriggerOut")
end

return Q73015TriggerQ01
